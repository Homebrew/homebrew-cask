cask "subler" do
  version "1.8.4"
  sha256 "849d56bc14a030e8dfb194b299c5a962b9bd31539436677fed66a77ffa946f2b"

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
