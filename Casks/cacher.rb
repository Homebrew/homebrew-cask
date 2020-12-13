cask "cacher" do
  version "2.37.0"
  sha256 "61fc80cadb452c2782046e10d8767e9bd4ef50478bc2376ce0e8b27e68f68608"

  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip",
      verified: "cacher-download.nyc3.digitaloceanspaces.com/"
  appcast "https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml"
  name "Cacher"
  homepage "https://www.cacher.io/"

  app "Cacher.app"
end
