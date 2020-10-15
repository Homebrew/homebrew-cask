cask "audiobook-builder" do
  version "2.1.1"
  sha256 "6caed55f195c8c05ed72b067020d32c3c7ac3534953e4d73cdcee1ea9b7a6e52"

  url "https://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  appcast "https://www.splasm.com/audiobookbuilder/"
  name "Audiobook Builder"
  homepage "https://www.splasm.com/audiobookbuilder/"

  app "Audiobook Builder.app"
end
