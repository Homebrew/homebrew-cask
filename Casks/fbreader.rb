cask "fbreader" do
  version "0.9.0"
  sha256 "1bec249e1a20efb274a365cacd3b8c41ee96a5d92075d991a864823622272572"

  url "https://fbreader.org/files/macos/FBReaderMacOS.dmg"
  appcast "https://fbreader.org/macos/"
  name "FBReader"
  homepage "https://fbreader.org/macos/"

  app "FBReader.app"

  zap trash: "~/.FBReader"
end
