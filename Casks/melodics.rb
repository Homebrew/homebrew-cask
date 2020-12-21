cask "melodics" do
  version "2.1.5554"
  sha256 "3bb5ae4faaf6e5865a2c9175b4f815a3a76c2e2f27ec712c41fe7339fa275dc0"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  name "Melodics"
  homepage "https://melodics.com/"

  livecheck do
    url "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
    strategy :sparkle
  end

  app "Melodics.app"
end
