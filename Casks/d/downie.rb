cask "downie" do
  version "4.7.23,4772"
  sha256 "8f858bbe8b5fc755c41f1d9a4f1843853b62d619ad0db56cc92f50454905a281"

  url "https://software.charliemonroe.net/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.csv.second}.dmg"
  name "Downie"
  desc "Downloads videos from different websites"
  homepage "https://software.charliemonroe.net/downie.php"

  livecheck do
    url "https://software.charliemonroe.net/trial/downie/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Downie #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.charliemonroe.Downie*",
    "~/Library/Application Scripts/D43XN356JM.Downie",
    "~/Library/Caches/com.apple.helpd/Generated/com.charliemonroe.DownieHelp*",
    "~/Library/Caches/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Downie*",
    "~/Library/Group Containers/com.charliemonroe.Downie.Safari",
    "~/Library/Group Containers/D43XN356JM.Downie",
    "~/Library/Preferences/com.charliemonroe.Downie-#{version.major}.plist",
  ]
end
