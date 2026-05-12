cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "10.1.3"
  sha256 arm:   "adf3868cb7f026381629a3621b38ef2be4e375713943f40cac998abbc2620471",
         intel: "e1270a1ce532845abfd113050829dfc039282b09d740955ff89d7a17f07225f1"

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
