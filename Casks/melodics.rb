cask "melodics" do
  version "2.1.5818"
  sha256 "171f5e166f31db27f6f50b63f1116d8d5ec9ac9e34b991163e90b47799b7292a"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  name "Melodics"
  homepage "https://melodics.com/"

  livecheck do
    url "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
    strategy :sparkle
  end

  app "Melodics.app"
end
