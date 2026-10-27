cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "12.1.2"
  sha256 arm:   "7c9710fbd0a409ea0a853ae199841adebd4d7241342634b15afec14d160ed19e",
         intel: "d116cb014625696bae21516cda996a0b3735a8f3cbba802ee3266ee3b37b475f"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/kcc_macos_#{arch}_#{version}.dmg"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://github.com/ciromattia/kcc"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Kindle Comic Converter.app"

  zap trash: [
    "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist",
    "~/Library/Preferences/Kindle Comic Converter.plist",
  ]
end
