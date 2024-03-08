cask "downie" do
  version "4.7.5,4679"
  sha256 "cfd544d6fada60e0b88644b79d5b7d08bc2d39c5e3423b9e215b9e4b380f7878"

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
    "~/Library/Application Scripts/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Application Scripts/com.charliemonroe.Downie-#{version.major}-Downie-Extension",
    "~/Library/Application Scripts/com.charliemonroe.Downie-#{version.major}.Share-Extension",
    "~/Library/Application Scripts/com.charliemonroe.Downie.Safari",
    "~/Library/Application Scripts/D43XN356JM.Downie",
    "~/Library/Caches/com.apple.helpd/Generated/com.charliemonroe.DownieHelp*#{version}",
    "~/Library/Caches/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Downie-#{version.major}-Downie-Extension",
    "~/Library/Containers/com.charliemonroe.Downie-#{version.major}.Share-Extension",
    "~/Library/Group Containers/com.charliemonroe.Downie.Safari",
    "~/Library/Group Containers/D43XN356JM.Downie",
    "~/Library/Preferences/com.charliemonroe.Downie-#{version.major}.plist",
  ]
end
