cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "12.1.4"
  sha256 arm:   "14dca656d8e593caf6341a8dad53c77628e948adc89097984b43efbd13c0cb56",
         intel: "1d05654a12c13f82a0135896bf555237659416ec52341647e56af36357d00c8a"

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
