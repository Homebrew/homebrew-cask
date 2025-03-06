cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "7.1.2"
  sha256 arm:   "ab7bbe4b738c452ab66e88280b25f6c5d5bb50466d63875b8b7c893c949e3da0",
         intel: "362a7565c44e0e2c32e5cf7bd030b614cb3f7ab3b7f504459c2ae5eb6bdf4fdf"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/kcc_macos_#{arch}_#{version}.dmg"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://github.com/ciromattia/kcc"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
