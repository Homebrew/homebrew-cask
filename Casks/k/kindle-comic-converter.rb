cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "6.1.0"
  sha256 arm:   "20382501b34ad97527db98b7912ba1a7f9ebbd77bd67303040180fb7e0b4dc94",
         intel: "2496b294203d2fe12f7d1831f6a6b5611bc1072e2e5dbf19531c3292db4460b6"

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
