cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "7.0.0"
  sha256 arm:   "5a433b74dceee524b3208ba8e9e676bcd9635c6e52c2483786134dadd897f1c3",
         intel: "7cea0f8ed50839910b18c620ab64e4a247274fa30e9b819f65509cda940e5c5e"

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
