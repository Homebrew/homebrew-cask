cask "melodics" do
  version "2.1.4825"
  sha256 "cc27a1453794188c226d7e68ffa16e29a64834f8df4d78d7ea2e4e589f27ed0d"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name "Melodics"
  homepage "https://melodics.com/"

  app "Melodics.app"
end
