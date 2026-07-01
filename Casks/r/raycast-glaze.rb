cask "raycast-glaze" do
  version "0.8.0,7639b72eb7"
  sha256 "a8c23e5c92fe7d0b53add89b3e27ede58be1ec20d8c28356708dfc579eba38d8"

  url "https://glaze.raycast-releases.com/Glaze_#{version.csv.first}_CI_Production_#{version.csv.second}_arm64.dmg",
      verified: "glaze.raycast-releases.com/"
  name "Glaze"
  desc "Build custom desktop apps for you and your team"
  homepage "https://www.glaze.app/"

  livecheck do
    url "https://glaze.raycast-releases.com/latest.json"
    regex(/Glaze[._-]v?(\d+(?:\.\d+)+)[._-]CI[._-]Production[._-](\h+)[._-]arm64/i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  conflicts_with cask: "glaze-app"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Glaze.app"

  uninstall launchctl: [
              "app.glaze.macos.main.cross-app-broker",
              "app.glaze.macos.main.updater",
              "app.glaze.macos.main.updater.daemon",
            ],
            quit:      "app.glaze.macos.main"

  zap trash: [
    "~/Library/Application Support/app.glaze.macos.main",
    "~/Library/Caches/app.glaze.macos.main",
    "~/Library/HTTPStorages/app.glaze.macos.main",
    "~/Library/Logs/app.glaze.macos.main",
    "~/Library/Preferences/app.glaze.macos.main.plist",
    "~/Library/WebKit/app.glaze.macos.main",
  ]
end
