cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "10.2.0"
  sha256 arm:   "3aa84049ed9b7d46b5bbb66042a96a384a22d1658c9a9336f4d0a90b2dde5075",
         intel: "05cf5b8ec3f9d319b27e05243e551092e3e5729b7c2c6226decdce9fa42f5c29"

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
