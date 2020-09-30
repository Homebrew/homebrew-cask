cask "subler" do
  version "1.6.6"
  sha256 "0844888aa83e619221dddcedecde63ecb88b92a88811d231dacab755939aa8a7"

  # bitbucket.org/galad87/subler/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast "https://subler.org/appcast/appcast.xml"
  name "Subler"
  desc "App to mux and tag mp4 files"
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
