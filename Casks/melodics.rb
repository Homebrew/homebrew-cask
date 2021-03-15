cask "melodics" do
  version "2.1.5735"
  sha256 "fd3cb7ce70ba5e1b41361e0298934a64148b7baa7503245e95118504426bc27f"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  name "Melodics"
  homepage "https://melodics.com/"

  livecheck do
    url "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
    strategy :sparkle
  end

  app "Melodics.app"
end
