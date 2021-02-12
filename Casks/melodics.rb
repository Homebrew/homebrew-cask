cask "melodics" do
  version "2.1.5687"
  sha256 "aba296b59412d496c8c177114102c8f3a640c293bc909b44af8e7aceddaea9b8"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  name "Melodics"
  homepage "https://melodics.com/"

  livecheck do
    url "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
    strategy :sparkle
  end

  app "Melodics.app"
end
