cask "cacher" do
  version "2.47.4"
  sha256 "25fdfcb2a30e265098b50d75e43a18baf8f711a4628d38ffd8ef9e063895b469"

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
