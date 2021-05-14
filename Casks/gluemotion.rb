cask "gluemotion" do
  version "1.5.0,6034"
  sha256 "349f01156bd41134bd8d43bfefc3dd445c9dd5c97dff59df37fcc357af9c36aa"

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
