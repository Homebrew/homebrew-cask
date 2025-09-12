cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "9.1.0"
  sha256 arm:   "1703548dd4bb2450bd4b02b507e6905d8baa7775d9ddbbf1a6d7a1eac6766705",
         intel: "631f43307cb93c59fab7f6c87d5d2affd4816b31305ec86627bffc3c88091bc0"

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
