cask "subler" do
  version "1.6.11"
  sha256 "0e258bd02433c2ad8bca165229804ba9565c328eda0a54d89c6f237f35a3678e"

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
