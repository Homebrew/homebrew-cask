cask "gluemotion" do
  version "2.2.0"
  sha256 "a8c8e9b6989f44807952a41b9f627b10b1c0409112b7f9c3629dc2a6d36c3d99"

  url "https://neededapps.com/appcasts/gluemotion/versions/#{version}"
  name "GlueMotion"
  desc "Create and correct time lapse movies"
  homepage "https://neededapps.com/gluemotion/"

  livecheck do
    url "https://neededapps.com/appcasts/gluemotion/changelog.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "GlueMotion.app"

  zap trash: [
    "~/Library/Application Support/GlueMotion",
    "~/Library/Caches/com.jeremyvizzini.gluemotion.macos",
    "~/Library/Preferences/com.jeremyvizzini.gluemotion.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.gluemotion.macos.savedState",
  ]
end
