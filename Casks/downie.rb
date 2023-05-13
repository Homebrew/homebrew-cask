cask "downie" do
  version "4.6.16,4558"
  sha256 "72c295f6a83ed78aca68a474f561e8aae3d3384343a70cb6d2da19ad246485d8"

  url "https://software.charliemonroe.net/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.csv.second}.dmg"
  name "Downie"
  desc "Downloads videos from different websites"
  homepage "https://software.charliemonroe.net/downie.php"

  livecheck do
    url "https://software.charliemonroe.net/trial/downie/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Downie #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Downie-#{version.major}-Downie-Extension",
    "~/Library/Preferences/com.charliemonroe.Downie-#{version.major}.plist",
  ]
end
