cask "cacher" do
  version "2.45.0"
  sha256 "c671a1efc377e42189dd22c0dc4c0f8b7e72c297efc4ad2eb320b449c0bde674"

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
