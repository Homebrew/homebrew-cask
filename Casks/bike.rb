cask "bike" do
  version "51"
  sha256 "1e2d017a53660cb970d8dfeb10aec765d0f44046ed87d375b35bf8246a2caa18"

  url "https://www.hogbaysoftware.com/bike/releases/#{version}.dmg"
  name "Bike"
  desc "Record and process your ideas"
  homepage "https://www.hogbaysoftware.com/bike/"

  livecheck do
    url "https://www.hogbaysoftware.com/bike/releases/"
    regex(/href=.*?(\d+).dmg"/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Bike.app"
end
