cask "cacher" do
  version "2.44.1"
  sha256 "cf23e0ae7fb2a967595e4fef5b35b363e4eea0ad30bef2c0950a50b99923c236"

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
end
