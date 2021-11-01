cask "invisor-lite" do
  version "3.15.1,940.210121"
  sha256 "208eeb370966fd07a16a45d39fe93683692999032f9b89cab0723d58ed25cdf1"

  url "https://www.invisorapp.com/download/InvisorLite-#{version.before_comma}.dmg"
  name "Invisor Lite"
  homepage "https://www.invisorapp.com/"

  livecheck do
    url "https://www.invisorapp.com/appcast_lite.xml"
    strategy :sparkle
  end

  app "Invisor Lite.app"
end
