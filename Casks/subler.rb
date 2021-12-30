cask "subler" do
  version "1.7.1"
  sha256 "d9629be53105dd77e45f5a0aecd2d98df24dcb8b6e8dbf0c2a8d20ce0648ea9e"

  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip",
      verified: "bitbucket.org/galad87/subler/"
  name "Subler"
  desc "Mux and tag mp4 files"
  homepage "https://subler.org/"

  livecheck do
    url "https://subler.org/appcast/appcast.xml"
    regex(/url=.*?Subler[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true

  app "Subler.app"

  zap trash: [
    "~/Library/Application Support/Subler",
    "~/Library/Caches/org.galad.Subler",
    "~/Library/Preferences/org.galad.Subler.plist",
    "~/Library/Saved Application State/org.galad.Subler.savedState",
  ]
end
