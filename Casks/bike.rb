cask "bike" do
  version "1.11.1,127"
  sha256 "90b40989bf6e095c28c51920d9d8eeb01a7168d813fc95e88db2c8ba30f12bf2"

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
