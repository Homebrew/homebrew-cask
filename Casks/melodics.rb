cask "melodics" do
  version "2.1.5128"
  sha256 "34268c4ee66147a6e204a5dfd4cfca490d740144c77665e03b2b026199390613"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name "Melodics"
  homepage "https://melodics.com/"

  app "Melodics.app"
end
