cask "anomaly-spaceman" do
  version "0.3.3,8540e3ba79340425d3605dbc7ac97c428ea19669b5c05b45a6b6d795ed566681"
  sha256 "8540e3ba79340425d3605dbc7ac97c428ea19669b5c05b45a6b6d795ed566681"

  url "https://anoma.ly/release/spaceman/files/#{version.csv.second}/Spaceman.zip"
  name "Spaceman"
  desc "Tiling window manager"
  homepage "https://anoma.ly/spaceman/"

  livecheck do
    url "https://anoma.ly/release/spaceman/desktop/stable.json"
    strategy :json do |json|
      version = json.dig("release", "version")
      sha256 = json.dig("release", "targets", "macos-arm64", "sha256")
      next if version.blank? || sha256.blank?

      "#{version},#{sha256}"
    end
  end

  auto_updates true
  conflicts_with cask: "spaceman"
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Spaceman.app"
  binary "#{appdir}/Spaceman.app/Contents/MacOS/spaceman"

  uninstall quit: "anomaly.spaceman"

  zap trash: [
    "~/Library/Application Support/Spaceman",
    "~/Library/Preferences/anomaly.spaceman.plist",
  ]
end
