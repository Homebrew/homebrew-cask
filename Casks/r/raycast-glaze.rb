cask "raycast-glaze" do
  version "0.14.6,c2a86c81a6"
  sha256 "2d59b962f98d8bf4cf7fc380f79f81db0a78487e04b814fff257930bc5c3f333"

  url "https://glaze.raycast-releases.com/Glaze_#{version.csv.first}_CI_Production_#{version.csv.second}_arm64.dmg"
  name "Glaze"
  desc "Create desktop apps by chatting with AI"
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
    "/Applications/Glaze",
    "~/Library/Application Support/app.glaze.macos.*",
    "~/Library/Caches/app.glaze.macos.*",
    "~/Library/HTTPStorages/app.glaze.macos.*",
    "~/Library/Logs/app.glaze.macos.*",
    "~/Library/Preferences/app.glaze.macos.*.plist",
    "~/Library/WebKit/app.glaze.macos.*",
  ]
end
