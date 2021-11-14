cask "gluemotion" do
  version "2.0.1,6055"
  sha256 "b801e9fde09f34e76491621fa494fc7e85a689751ab9e7dfb144c54997c4f4ea"

  url "https://neededapps.com/appcasts/gluemotion/versions/GM-#{version.before_comma}.zip"
  name "GlueMotion"
  desc "Create and correct time lapse movies"
  homepage "https://neededapps.com/gluemotion/"

  livecheck do
    url "https://neededapps.com/appcasts/gluemotion/changelog.xml"
    strategy :sparkle
  end

  app "GlueMotion.app"

  zap trash: [
    "~/Library/Application Support/GlueMotion",
    "~/Library/Caches/com.jeremyvizzini.gluemotion.macos",
    "~/Library/Preferences/com.jeremyvizzini.gluemotion.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.gluemotion.macos.savedState",
  ]
end
