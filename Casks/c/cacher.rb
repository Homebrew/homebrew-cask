cask "cacher" do
  version "2.47.2"
  sha256 "d17ddf14ff26910d4d18c84d7eaf74c6a8b30a053e483cd51c4ed7c0e16b0379"

  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-universal-mac.zip",
      verified: "cacher-download.nyc3.digitaloceanspaces.com/"
  name "Cacher"
  desc "Code snippet organizer"
  homepage "https://www.cacher.io/"

  livecheck do
    url "https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Cacher.app"

  zap trash: [
    "~/.cacher",
    "~/Library/Application Support/Cacher",
    "~/Library/Preferences/net.PenguinLabs.Cacher.plist",
    "~/Library/Saved Application State/net.PenguinLabs.Cacher.savedState",
  ]
end
