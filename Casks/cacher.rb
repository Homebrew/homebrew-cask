cask "cacher" do
  version "2.38.3"
  sha256 "a4824571b2b781fdd129a84d753a4c02802427f20526a798efe16183d55c29f9"

  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip",
      verified: "cacher-download.nyc3.digitaloceanspaces.com/"
  appcast "https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.yml"
  name "Cacher"
  homepage "https://www.cacher.io/"

  app "Cacher.app"
end
