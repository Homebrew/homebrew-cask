cask "downie" do
  version "4.10.7,5022"
  sha256 "cfb716d428050cae0c67c30033aa4cfd3a90badbedd9197ea30bf75c31956396"

  url "https://software.charliemonroe.net/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.csv.second}.dmg"
  name "Downie"
  desc "Downloads videos from different websites"
  homepage "https://software.charliemonroe.net/downie.php"

  livecheck do
    url "https://software.charliemonroe.net/trial/downie/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
