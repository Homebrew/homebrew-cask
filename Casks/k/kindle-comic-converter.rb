cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "10.3.0"
  sha256 arm:   "bda8b774b3cabe7a89b620433ff34678dce209bfa32887b5ffdbf601b027374f",
         intel: "946e7ed3d0330917cadac0b598d207efcc3f04825904df98560ac6f8875e0b8e"

  on_arm do
    depends_on macos: :big_sur
  end
  on_intel do
    depends_on macos: :catalina
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

  depends_on :macos

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
