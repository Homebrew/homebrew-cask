cask "airy" do
  version "3.17,297"
  sha256 "487a41c03afe1d3e4ac8ef7f6cb050cda6c682135c707e8b796c8f0c4ea07e48"

  url "https://cdn.eltima.com/download/airy.dmg"
  appcast "https://cdn.eltima.com/download/airy-update/airy.xml"
  name "Airy"
  homepage "https://mac.eltima.com/youtube-downloader-mac.html"

  app "Airy.app"

  uninstall quit: "com.eltima.Airy"

  zap trash: "~/Library/Preferences/com.eltima.Airy.plist"
end
