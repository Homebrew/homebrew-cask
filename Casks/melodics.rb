cask "melodics" do
  version "2.1.5305"
  sha256 "b51a78eaebf395d7993abdb9705e98811bfdc169dfec482cb269212321c27f35"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name "Melodics"
  homepage "https://melodics.com/"

  app "Melodics.app"
end
