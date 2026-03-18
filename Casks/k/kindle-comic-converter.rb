cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "9.6.2"
  sha256 arm:   "31606a2c2a513d85a6e31a4eb00f295bb79f3f56c30fb748900610b85ad75ce9",
         intel: "cfc9625cca219679eed4cdf380cc90e7d47e12a40a2078017c5100e2eec0fa28"

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
