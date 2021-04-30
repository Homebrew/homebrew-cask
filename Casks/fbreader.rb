cask "fbreader" do
  version "0.9.0"
  sha256 :no_check

  url "https://fbreader.org/files/macos/FBReaderMacOS.dmg"
  appcast "https://fbreader.org/macos/"
  name "FBReader"
  homepage "https://fbreader.org/macos/"

  app "FBReader.app"

  zap trash: "~/.FBReader"
end
