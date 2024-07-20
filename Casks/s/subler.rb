cask "subler" do
  version "1.8.3"
  sha256 "2e4924f66a237f53289ce9dc3887f95434931a3631be45872ac1907724024af1"

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
