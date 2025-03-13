cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "7.3.3"
  sha256 arm:   "06e06370a4a76fdc014a88975094f75f2541df538f96cf2985881429e10fb020",
         intel: "b9eafc0ce6162e733aa15544c82a5edda423556ad2d65563d231a38e2814cf07"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/kcc_macos_#{arch}_#{version}.dmg"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://github.com/ciromattia/kcc"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
