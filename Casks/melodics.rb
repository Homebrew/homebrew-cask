cask "melodics" do
  version "2.1.6059"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  name "Melodics"
  desc "Helps you learn to play your instrument"
  homepage "https://melodics.com/"

  livecheck do
    url "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Melodics.app"
end
