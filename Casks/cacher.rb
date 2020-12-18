cask "cacher" do
  version "2.38.2"
  sha256 "d20c721173f753d0fdf76c8399f1977634983350c7955ec5d609695725e547a8"

  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip",
      verified: "cacher-download.nyc3.digitaloceanspaces.com/"
  appcast "https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml"
  name "Cacher"
  homepage "https://www.cacher.io/"

  app "Cacher.app"
end
