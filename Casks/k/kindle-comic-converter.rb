cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "11.0.3"
  sha256 arm:   "30fefe8aa9632dd16113e34bb2006cd4e7cb34f2d37efe76bb3fde85e8e0059c",
         intel: "fb96ac65eded7237ad2a1d26be749ce7da10bd12e90909a0a67b8c9081633a42"

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

  depends_on :macos

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
