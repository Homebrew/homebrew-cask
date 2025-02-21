cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "7.2.1"
  sha256 arm:   "4fbb6b7f7c94bc56ab35b804951ccb3fca9102f2ec59e4373489bc31d185fe34",
         intel: "878caf893759d922cfe9db7c14857429a07f08cb652ffceaacb267748097e99e"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/kcc_macos_#{arch}_#{version}.dmg",
      verified: "github.com/ciromattia/kcc/"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://kcc.iosphe.re/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
