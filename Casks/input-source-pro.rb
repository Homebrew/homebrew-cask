cask "input-source-pro" do
  version "2.1.3-beta,320"
  sha256 "6ab00c991db46b14bda44312b5bb645ff8245aefb166fb6ac578a92581522be1"

  url "https://inputsource.pro/beta/Input%20Source%20Pro%20#{version.csv.first}.dmg"
  name "Input Source Pro"
  desc "Tool for multi-language users"
  homepage "https://inputsource.pro/"

  livecheck do
    url "https://inputsource.pro/beta/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Input Source Pro.app"

  zap trash: [
    "~/Library/Application Support/Input Source Pro",
    "~/Library/Caches/com.runjuu.Input-Source-Pro",
    "~/Library/Preferences/com.runjuu.Input-Source-Pro.plist",
  ]
end
