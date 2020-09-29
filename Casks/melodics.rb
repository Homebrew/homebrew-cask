cask "melodics" do
  version "2.1.5105"
  sha256 "45bd0b673044b13c0266c4c1972059781d54ea140a0a8c90ff84a592e9fab109"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name "Melodics"
  homepage "https://melodics.com/"

  app "Melodics.app"
end
