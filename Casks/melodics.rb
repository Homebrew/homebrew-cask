cask "melodics" do
  version "2.1.4831"
  sha256 "eae45ed1cafbe2607c6353743100c9e1fcbc723a51b08d2e95f0333bb6d8a064"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name "Melodics"
  homepage "https://melodics.com/"

  app "Melodics.app"
end
