cask "subler" do
  version "1.9.1"
  sha256 "b58172046d86d809bed47752fa9c8e2abf4ca001296989884da774e02c962f76"

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
