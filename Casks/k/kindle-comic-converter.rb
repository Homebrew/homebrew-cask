cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "8.0.2"
  sha256 arm:   "95250d43c864597ae1e022f744144c79812b5e7a3cc8568a1e230a7ed705af30",
         intel: "61f824fbb5eadae6a7fe81e7ffb92ab6a0908c7bd8d8f190db42f1239ce1e933"

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
