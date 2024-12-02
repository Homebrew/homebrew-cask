cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "6.3.1"
  sha256 arm:   "316a5f0568cae7af41d06a63431d1b0c19eeb5b244f999f3d748a4ebdfded85f",
         intel: "7d4c7c17c7b3a10bcbae2713a36c00dda9fe51b9163763b05662109fd67dada4"

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
