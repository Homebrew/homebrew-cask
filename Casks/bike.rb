cask "bike" do
  version "1.7,90"
  sha256 "b6ca1327ccb9603c53ebdbd311cfe252d267ee2d8d62eb594f69d8ef6d6d8b86"

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
