cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "13.0.3"
  sha256 arm:   "94006f1106e8a1713b5fe39ec6e5195443d3ee8b0cca6eebd0b5151d27c19030",
         intel: "3b59bad7fb55056bded2b12293189a12ab018541b04da7ba74c1e45438c1dddb"

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
