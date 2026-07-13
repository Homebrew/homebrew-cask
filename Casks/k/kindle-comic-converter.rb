cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "10.4.0"
  sha256 arm:   "b5699a35486973caf5b6ec1ae4955677ad592c27d33372c3a49f152150e149c3",
         intel: "287d037f94fa6859ea5080f74d7b7ad81e35ac22fa69abfdf5c6bda935eb0f45"

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
