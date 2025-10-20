cask "cacher" do
  version "2.47.9"
  sha256 "03e5268ab948e68135dbea2d25c7f2504992322fd8cf5ba1c12b08d8187b364a"

  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-universal-mac.zip",
      verified: "cacher-download.nyc3.digitaloceanspaces.com/"
  name "Cacher"
  desc "Code snippet organiser"
  homepage "https://www.cacher.io/"

  livecheck do
    url "https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Cacher.app"

  zap trash: [
    "~/.cacher",
    "~/Library/Application Support/Cacher",
    "~/Library/Preferences/net.PenguinLabs.Cacher.plist",
    "~/Library/Saved Application State/net.PenguinLabs.Cacher.savedState",
  ]
end
