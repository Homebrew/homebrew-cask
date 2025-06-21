cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "7.5.1"
  sha256 arm:   "96e08be9906feca202eb59af8f6d5156c861e6217e702b44cce7b64ecf2aac00",
         intel: "c8ac52012c3b4f4cdbc7942a7e957e9bf765d82f5d241ebdce79bf5fb3f3a9ff"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/kcc_macos_#{arch}_#{version}.dmg"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://github.com/ciromattia/kcc"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
