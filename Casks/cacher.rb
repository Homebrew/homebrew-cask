cask "cacher" do
  version "2.39.0"
  sha256 "7561f887a23f7f536606dcaad3c49836e3a8985b1c50a4c188bcd063a066af3e"

  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip",
      verified: "cacher-download.nyc3.digitaloceanspaces.com/"
  appcast "https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml"
  name "Cacher"
  homepage "https://www.cacher.io/"

  app "Cacher.app"
end
