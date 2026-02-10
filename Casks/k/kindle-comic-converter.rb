cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "9.4.3"
  sha256 arm:   "d4232857100fd72b524b37a3a685826060a1806bc98803f2b87fcd1be58f8f05",
         intel: "36104595815b391f0ce224b322791385f303facd0e739a3f6200f400a674c724"

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
