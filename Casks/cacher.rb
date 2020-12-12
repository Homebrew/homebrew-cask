cask "cacher" do
  version "2.36.0"
  sha256 "e87e4e429fd710017f08e46c93e37eda5cc9cded57b95ddea43905c253fa2bb3"

  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip",
      verified: "cacher-download.nyc3.digitaloceanspaces.com/"
  appcast "https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml"
  name "Cacher"
  homepage "https://www.cacher.io/"

  app "Cacher.app"
end
