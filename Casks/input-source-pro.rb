cask "input-source-pro" do
  version "2.0.6-beta,307"
  sha256 "7663ec0a28da9e8ab58b5afe3f19de20524dd65af7334127993d2ca811d91e2e"

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
