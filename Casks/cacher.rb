cask "cacher" do
  version "2.44.3"
  sha256 "95ce17d6a36a2736690d01e4f076d8fdf4025cdd6d476fc87c221a9f0ac45180"

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
