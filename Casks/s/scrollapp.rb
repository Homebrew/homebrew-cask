cask "scrollapp" do
  version "1.3.1"
  sha256 "9ad8a702b089a8c887bc3d63e1b6faa43206b86070b2003a10ec505e0abc71b7"

  url "https://github.com/fromis-9/scrollapp/releases/download/v#{version}/Scrollapp-v#{version}.zip"
  name "Scrollapp"
  desc "Automatic scrolling for webpages and documents"
  homepage "https://scrollapp.app/"

  depends_on :macos

  app "Scrollapp.app"

  uninstall quit: "com.corinthians.Scrollapp"

  zap trash: "~/Library/Preferences/com.corinthians.Scrollapp.plist"
end
