cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.5.2"
  sha256 arm:   "0226b7401af79284ec5978f35bbc98621d10e151fe71a9f88c5b6e26d4f8dbda",
         intel: "1af86406877da8470c9f0d83a971f632edb1d77afc7abe39257e5719580aef4a"

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
