cask "subler" do
  version "1.9.5"
  sha256 "446cfe23d7b85063176afc7bf5cdd75e3eb267c0b23ae9831c85ed37d08e2f85"

  url "https://github.com/SublerApp/Subler/releases/download/#{version}/Subler-#{version}.zip"
  name "Subler"
  desc "Mux and tag mp4 files"
  homepage "https://subler.org/"

  livecheck do
    url "https://subler.org/appcast/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Subler.app"

  zap trash: [
    "~/Library/Application Support/Subler",
    "~/Library/Caches/org.galad.Subler",
    "~/Library/Preferences/org.galad.Subler.plist",
    "~/Library/Saved Application State/org.galad.Subler.savedState",
  ]
end
