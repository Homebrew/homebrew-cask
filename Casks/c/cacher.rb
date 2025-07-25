cask "cacher" do
  version "2.47.8"
  sha256 "d4d839129cebb290f1f159f7ebc6fff3f1e407f619ea209b96629f4bd3ff9c26"

  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-universal-mac.zip",
      verified: "cacher-download.nyc3.digitaloceanspaces.com/"
  name "Cacher"
  desc "Code snippet organiser"
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
