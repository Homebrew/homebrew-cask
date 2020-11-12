cask "subler" do
  version "1.6.9"
  sha256 "1e5ed973059bca998e089d51b6f350390325ea537f095542161d9dda31d9603d"

  # bitbucket.org/galad87/subler/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast "https://subler.org/appcast/appcast.xml"
  name "Subler"
  desc "Mux and tag mp4 files"
  homepage "https://subler.org/"

  auto_updates true

  app "Subler.app"

  zap trash: [
    "~/Library/Preferences/org.galad.Subler.plist",
    "~/Library/Application Support/Subler",
    "~/Library/Caches/org.galad.Subler",
    "~/Library/Saved Application State/org.galad.Subler.savedState",
  ]
end
