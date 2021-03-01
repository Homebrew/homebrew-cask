cask "movist-pro" do
  version "2.6.5,172"
  sha256 "33a991580764d6c6470708373e49cec206a0c0b34bae707e8140df2190f2b1b0"

  url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/MovistPro_#{version.before_comma}.dmg",
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
