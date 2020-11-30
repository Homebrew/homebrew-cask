cask "cacher" do
  version "2.34.0"
  sha256 "b9bf3c0ca65f8d25ccd8c334db243f1244c6adbc6c13f45975b5810bd01d96e5"

  # cacher-download.nyc3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast "https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml"
  name "Cacher"
  homepage "https://www.cacher.io/"

  app "Cacher.app"
end
