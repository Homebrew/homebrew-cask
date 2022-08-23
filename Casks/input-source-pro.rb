cask "input-source-pro" do
  version "2.1.8-beta,328"
  sha256 "35c42befb234cb36bdcbb0b99d51f23b06b427d4f23fd59a4ae824e246d9091c"

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
