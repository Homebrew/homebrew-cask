cask "dashdrop" do
  arch arm: "arm64", intel: "x64"
  version "0.0.1"
  sha256 arm: "8af6239981607e20217a2ea6a3c43682d4266227fc40feacc99d8bd609591db1",
         intel: "066cee6977067ee30706549fe8f08576574606a599f018c8ec9a542990467598"

  url "https://dashdrop.s3.ap-south-1.amazonaws.com/dashdrop-#{version}-mac-#{arch}.dmg"
  name "Dashdrop"
  desc "File transfer app"
  homepage "https://dashdrop.s3.ap-south-1.amazonaws.com/index.html"

  livecheck do
    url "https://dashdrop.s3.ap-south-1.amazonaws.com/updates.xml"
    strategy :sparkle
  end

  auto_updates trues
  depends_on macos: ">= :mojave"

  app "dashdrop.app"

  zap trash: [
    "~/Library/Application Support/Dashdrop",
    "~/Library/Caches/com.zedbyte.dashdrop",
    "~/Library/Cookies/com.zedbyte.dashdrop.binarycookies",
    "~/Library/Preferences/com.zedbyte.dashdrop.plist",
  ]
end
