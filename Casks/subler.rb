cask "subler" do
  version "1.6.10"
  sha256 "4ae8721ba90e7b119cb743a0b0255f90bc2ae39d91df96f4c6da916ca007fac8"

  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip",
      verified: "bitbucket.org/galad87/subler/"
  name "Subler"
  desc "Mux and tag mp4 files"
  homepage "https://subler.org/"

  livecheck do
    url "https://subler.org/appcast/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Subler.app"

  zap trash: [
    "~/Library/Preferences/org.galad.Subler.plist",
    "~/Library/Application Support/Subler",
    "~/Library/Caches/org.galad.Subler",
    "~/Library/Saved Application State/org.galad.Subler.savedState",
  ]
end
