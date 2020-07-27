cask "epubquicklook" do
  version "1.8"
  sha256 "923b2ebcbffc4ee1da42550c2239b41bad088d61956b22b1a92b293329ef6fe5"

  url "https://github.com/jaketmp/ePub-quicklook/releases/download/v#{version}/epub.qlgenerator.zip"
  appcast "https://github.com/jaketmp/ePub-quicklook/releases.atom"
  name "EPUB QuickLook"
  homepage "https://github.com/jaketmp/ePub-quicklook"

  qlplugin "epub.qlgenerator"
end
