cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "7.6.0"
  sha256 arm:   "faab7c515832ad80f1ef55d8a8e0fbdfa37dd206077f55596bdf704925d37a16",
         intel: "f706429642882e8536647f47bb42b9f9930366e51ec229b409e3e55dee8ef8a1"

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
