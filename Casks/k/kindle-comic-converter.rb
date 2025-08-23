cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "9.0.0"
  sha256 arm:   "c4bce486fc62834a0862cafeb5a31f30d6d53f8b235e0a5d758b75b855141c27",
         intel: "4ff9af75a5b5cd900520fac6e2aa60a5182c80fd5c94bdc7e70dcff5cef13fbc"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/kcc_macos_#{arch}_#{version}.dmg"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://github.com/ciromattia/kcc"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
