cask "melodics" do
  version "2.1.5387"
  sha256 "6e1b3decfbf90fb1651e7ed3d4ff8763bd5e7a2436fab8535aa2574de530b4b2"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name "Melodics"
  homepage "https://melodics.com/"

  app "Melodics.app"
end
