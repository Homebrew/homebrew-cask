cask "melodics" do
  version "2.1.5554"
  sha256 "3bb5ae4faaf6e5865a2c9175b4f815a3a76c2e2f27ec712c41fe7339fa275dc0"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name "Melodics"
  homepage "https://melodics.com/"

  app "Melodics.app"
end
