cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "f9c3e481f0ff2ff3a2eed94ab247ad9a283b89343ed470069bf7e82e07bcb2ea",
         intel: "edfd2c8c12d6303c62ea193a4a8055e6fcb9a2b221be7d40275712d592d7d853"

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
