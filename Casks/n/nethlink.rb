cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.5.1"
  sha256 arm:   "349890a163cd651ab2782274f0e17dc21c7e8c758cdde0a813693833394c7788",
         intel: "cd0f9deb3499cfb6497a68f8db3d049599050166df73cdecd938d7142dfc09ba"

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
