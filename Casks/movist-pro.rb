cask "movist-pro" do
  version "2.6.3"
  sha256 "0715d43b095abf7358264334b53a14e3444874e3eaf4c0beae0576ab1c51a284"

  url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/MovistPro_#{version}.app.zip",
      verified: "s3.ap-northeast-2.amazonaws.com/update.cocoable.com/"
  appcast "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml"
  name "Movist Pro"
  desc "Media player"
  homepage "https://movistprime.com/"

  app "Movist Pro.app"
end
