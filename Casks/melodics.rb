cask "melodics" do
  version "2.1.5641"
  sha256 "b59942835ea96a68c71f531f75dbfd970f5f0fe384e1bac36561f356098049bd"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  name "Melodics"
  homepage "https://melodics.com/"

  livecheck do
    url "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
    strategy :sparkle
  end

  app "Melodics.app"
end
