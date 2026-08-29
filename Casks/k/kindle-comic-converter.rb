cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "11.0.1"
  sha256 arm:   "507b250184d5bd5c889c52d1db7b7e24518e4d6debe452ee2844dfd284898ddf",
         intel: "727fbdd0a78105dc68b239bfeea2b0c996d277de5a80225cef98891dd2481749"

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
