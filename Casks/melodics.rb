cask "melodics" do
  version "2.1.5588"
  sha256 "d9aac95bfea2f06e2393acc0f14e77864bee5066d201eb0a3d7f9ee68d7ed945"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  name "Melodics"
  homepage "https://melodics.com/"

  livecheck do
    url "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
    strategy :sparkle
  end

  app "Melodics.app"
end
