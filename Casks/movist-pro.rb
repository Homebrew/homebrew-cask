cask "movist-pro" do
  version "2.6.3_1,168"
  sha256 "5e14e674b0ec896be54e2b95d68416a05e2b4acf7ef83fdd0faf771d470a9bb6"

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
