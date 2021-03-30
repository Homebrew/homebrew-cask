cask "melodics" do
  version "2.1.5785"
  sha256 "e9b7e0884056727159ef0e26cce6fce62b8976f5a736d22e13febd8b8659b46a"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  name "Melodics"
  homepage "https://melodics.com/"

  livecheck do
    url "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
    strategy :sparkle
  end

  app "Melodics.app"
end
