cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "9.2.2"
  sha256 arm:   "1b3607048e90ae952f06df62283593bc837a1dc324b2d77792ac1e6667a89092",
         intel: "323bb2306625c3505e44ea893e7049781acc9ffb0f34d1408fc17221249c7c16"

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
