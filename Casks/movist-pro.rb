cask "movist-pro" do
  version "2.8.3,190"
  sha256 "37fa31f456307060f1ba30f269394afed3a5b41b3f19640ee2a35a9e314363b5"

  url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/MovistPro_#{version.csv.first}.dmg",
      verified: "s3.ap-northeast-2.amazonaws.com/update.cocoable.com/"
  name "Movist Pro"
  desc "Media player"
  homepage "https://movistprime.com/"

  livecheck do
    url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml"
    strategy :sparkle
  end

  app "Movist Pro.app"
end
