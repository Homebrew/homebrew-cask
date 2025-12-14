cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "9.3.6"
  sha256 arm:   "818250ee4c5e816dae6c5c1fda32253d61bbf04c7c67d87fb110a8093e6992a1",
         intel: "551239ebdc498d1293806968e509168d430dce7884225d1866a25fa009328938"

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
