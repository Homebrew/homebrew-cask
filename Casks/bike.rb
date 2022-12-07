cask "bike" do
  version "1.7,92"
  sha256 "69d1c3517f1c76e3430c6cd771bf8671a0e041dcdfc5638476a67771043dcc5d"

  url "https://www.hogbaysoftware.com/bike/releases/#{version.csv.second}.dmg"
  name "Bike"
  desc "Record and process your ideas"
  homepage "https://www.hogbaysoftware.com/bike/"

  livecheck do
    url "https://www.hogbaysoftware.com/bike/releases/index.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bike.app"

  zap trash: [
    "~/Library/Application Scripts/com.hogbaysoftware.Bike",
    "~/Library/Containers/com.hogbaysoftware.Bike",
  ]
end
