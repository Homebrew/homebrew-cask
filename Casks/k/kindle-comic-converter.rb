cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "6.1.1"
  sha256 arm:   "028822dde6d365504ec6dd9efb1c35ebba494ef12989664b4df27dd03d7110ce",
         intel: "f9b47cce285b98cdf2c492ac10d30ac12dc3a3844970fb1aa60c1fc0ef78fb32"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/kcc_macos_#{arch}_#{version}.dmg",
      verified: "github.com/ciromattia/kcc/"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://kcc.iosphe.re/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
