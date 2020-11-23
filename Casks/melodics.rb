cask "melodics" do
  version "2.1.5368"
  sha256 "d8a691e1c3787b1663d8757e6802dd6299ffd7917dac4e90b3714a0514c9d7ac"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name "Melodics"
  homepage "https://melodics.com/"

  app "Melodics.app"
end
