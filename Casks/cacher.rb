cask "cacher" do
  version "2.47.0"
  sha256 "387202089334afac091e8f4f484ca0862efc0abe8f889fa4be1f0632de27c715"

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
