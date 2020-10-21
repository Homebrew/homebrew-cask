cask "cacher" do
  version "2.33.0"
  sha256 "9bd73f969714cec41c5648855eddda27a9e6312c62a8493db4a974e13ee7f578"

  # cacher-download.nyc3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast "https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml"
  name "Cacher"
  homepage "https://www.cacher.io/"

  app "Cacher.app"
end
