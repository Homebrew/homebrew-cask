cask "subler" do
  version "1.8.5"
  sha256 "ddf0c13044da6a090c6db1b5f5ca7332880c1312a31004416b63b20d22b7d175"

  url "https://github.com/SublerApp/Subler/releases/download/#{version}/Subler-#{version}.zip",
      verified: "github.com/SublerApp/Subler/"
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
    "~/Library/Application Support/Subler",
    "~/Library/Caches/org.galad.Subler",
    "~/Library/Preferences/org.galad.Subler.plist",
    "~/Library/Saved Application State/org.galad.Subler.savedState",
  ]
end
