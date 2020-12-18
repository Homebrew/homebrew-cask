cask "audiobook-builder" do
  version "2.1.2"
  sha256 "acf96a39171df286a039e88e4e9b9fa20b7fc10c6ab96ed90c308e8cfdc99cd9"

  url "https://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  appcast "https://www.splasm.com/audiobookbuilder/"
  name "Audiobook Builder"
  homepage "https://www.splasm.com/audiobookbuilder/"

  app "Audiobook Builder.app"
end
