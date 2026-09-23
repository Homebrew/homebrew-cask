cask "subler" do
  version "1.9.3"
  sha256 "986111ebb5ba73cb06815b69472eedf84616dbdb90cc43f7f20e997e60fd126a"

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
