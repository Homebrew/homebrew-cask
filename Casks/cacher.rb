cask "cacher" do
  version "2.32.3"
  sha256 "59a99c8a8b93c4d7f31b2a04ec289cb9f5f74b863cad85a1d87f09a4ab9481ab"

  # cacher-download.nyc3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast "https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml"
  name "Cacher"
  homepage "https://www.cacher.io/"

  app "Cacher.app"
end
