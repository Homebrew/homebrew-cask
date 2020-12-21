cask "movist-pro" do
  version "2.6.3,167"
  sha256 "0715d43b095abf7358264334b53a14e3444874e3eaf4c0beae0576ab1c51a284"

  url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/MovistPro_#{version.before_comma}.app.zip",
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
