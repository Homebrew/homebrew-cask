cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "9.7.2"
  sha256 arm:   "84a091030ba3fb5ff3a3ba90b79cc59902dca28231c6a757a18aada07ebd3bc5",
         intel: "fab8f807b074384dceb2c041a4d0bd1be8b25472da3cb53691eb2a823b0b48d3"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

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

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
