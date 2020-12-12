cask "paintbrush" do
  version "2.5.0"
  sha256 "fca1d23f6da1ff1fe6768ba67cd692362cbf86ad9adf72431514740a37c513b6"

  # downloads.sourceforge.net/paintbrush/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/paintbrush/Paintbrush%202.x/Paintbrush%20#{version}/Paintbrush-#{version}.zip"
  appcast "https://paintbrush.sourceforge.io/updates#{version.major}x.xml"
  name "Paintbrush"
  desc "Image editor"
  homepage "https://paintbrush.sourceforge.io/"

  app "Paintbrush.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.soggywaffles.paintbrush.sfl*",
    "~/Library/Preferences/com.soggywaffles.Paintbrush.LSSharedFileList.plist",
    "~/Library/Preferences/com.soggywaffles.Paintbrush.plist",
    "~/Library/Caches/com.soggywaffles.Paintbrush",
  ]
end
