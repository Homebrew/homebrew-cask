cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "9.2.1"
  sha256 arm:   "b4c49b0070edcce69f53e6a4631b37679f7cadb3929ecdd3f9c674953464baf9",
         intel: "f5609d78c177e67c1f7ffa72b95796b69fe58932425e64ededfefaab6e18ea64"

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
