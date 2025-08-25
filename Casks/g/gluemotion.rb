cask "gluemotion" do
  version "2.2.4"
  sha256 "2b08b4799596a56e0dfae2cdf20202cd3e644c3e817c73e4ca46c5bf47891887"

  url "https://neededapps.com/appcasts/gluemotion/versions/#{version}"
  name "GlueMotion"
  desc "Create and correct time lapse movies"
  homepage "https://neededapps.com/gluemotion/"

  livecheck do
    url "https://neededapps.com/appcasts/gluemotion/changelog.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "GlueMotion.app"

  zap trash: [
    "~/Library/Application Support/GlueMotion",
    "~/Library/Caches/com.jeremyvizzini.gluemotion.macos",
    "~/Library/Preferences/com.jeremyvizzini.gluemotion.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.gluemotion.macos.savedState",
  ]
end
