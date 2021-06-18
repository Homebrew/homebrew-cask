cask "movist-pro" do
  version "2.6.7,174"
  sha256 "6e19719e17f93b09337094ba03af6c28cb4a9e4e15e5b9f012e1471cc7948b1e"

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
