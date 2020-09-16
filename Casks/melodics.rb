cask "melodics" do
  version "2.1.5075"
  sha256 "15820a12ee6939a5a72b88cc478176ae2c67ea92cdb2eb19c6a4ba2b218c4af5"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name "Melodics"
  homepage "https://melodics.com/"

  app "Melodics.app"
end
