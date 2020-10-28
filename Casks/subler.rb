cask "subler" do
  version "1.6.7"
  sha256 "451ae203ee5f2b031c094bf7c16b566e00fda737dcafd17d35cfc0058b7e879e"

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
