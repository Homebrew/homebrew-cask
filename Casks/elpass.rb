cask "elpass" do
  version "1.4.3,425"
  sha256 "eb2c9411c10431f2ec1188319e7e951b12f5fa60a2b5c9ba68f2d446d714c98c"

  url "https://elpass.app/macos/Elpass-#{version.csv.first}-#{version.csv.second}.zip"
  name "Elpass"
  desc "Password manager"
  homepage "https://elpass.app/"

  livecheck do
    url "https://elpass.app/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Elpass.app"
end
