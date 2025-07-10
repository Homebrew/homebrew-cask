cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "8.0.4"
  sha256 arm:   "396f1f955e08bfcbf1f7b97b5458a6e6f7d51250919a86896e938307d25620f5",
         intel: "facd97f07ce9d52d591955af89835930540a2f684adc0adf1411bbb6f86db14d"

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
