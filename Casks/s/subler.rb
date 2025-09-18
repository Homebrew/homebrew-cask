cask "subler" do
  version "1.9.0"
  sha256 "e4658355bdc9d3db5bac82c0c295f84d1c917da3cf70b80da06292264e7cb867"

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
