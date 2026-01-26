cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "9.4.2"
  sha256 arm:   "cf8b6f55ee52441a378e62134fc2c5569a7b2902747d42347b88a402ae659698",
         intel: "3bfa4eae8f2b13fbd80a717026bd4431f223b9d4c330890a31766f1c6e2705c3"

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
