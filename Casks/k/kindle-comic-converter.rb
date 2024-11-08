cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "6.2.2"
  sha256 arm:   "70709a38f012223c5b4dcb798199707778cd8a74cc77aebea171796180d34fff",
         intel: "15353880fe8ee12870dc5d22bd40edf91e93e91a80c3506f1c5d59ab902451bd"

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
