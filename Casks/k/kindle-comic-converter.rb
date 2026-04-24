cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "10.0.1"
  sha256 arm:   "5ddfe05e9ec325685e395986f781ff578b18d1e1e18a4d196d758e0a3443872c",
         intel: "74e6c08b0390ff1429ea2beeb29b8e855c5425662f50516b682bc3f69f6e6d43"

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
