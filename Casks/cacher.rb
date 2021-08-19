cask "cacher" do
  version "2.42.2"
  sha256 "91bd81cdecd24766d78defbb184d36dc1b40a5a57ecfd0f47dfd05df21d0773c"

  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip",
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
