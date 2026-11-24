cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "a43af31e00b4b5e4c3fcde2c954650532b7aac424374fa9a0952508686495034",
         intel: "f4c7778e528bcc9617edd23a786c29786d1dba0059b46cbb1bc23a834faff6a3"

  url "https://github.com/NethServer/nethlink/releases/download/v#{version}/nethlink-#{version}-#{arch}.dmg"
  name "NethLink"
  desc "Link NethServer systems and provide remote access tools"
  homepage "https://github.com/NethServer/nethlink"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "NethLink.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nethesis.nethlink.app.sfl*",
    "~/Library/Application Support/nethlink",
    "~/Library/Preferences/com.nethesis.nethlink.app.plist",
  ]
end
