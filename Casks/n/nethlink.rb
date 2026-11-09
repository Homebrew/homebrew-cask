cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.5.3"
  sha256 arm:   "e2edd385f062ae8f8e5cd8b8653e188eee9f1ad3838555d87d6e5d7a6d51a7d2",
         intel: "cf39a0b40eea75722668832e807bb46281fefc92e21081f497ff2e39f5ec7524"

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
