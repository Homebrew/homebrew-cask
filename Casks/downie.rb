cask "downie" do
  version "4.2.7,4258"
  sha256 "3a4f36222f54ec56f87caadceec99e0415ecf86921e01c1d19821ce48e9f98c9"

  url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg",
      verified: "charliemonroesoftware.com/"
  name "Downie"
  desc "Downloads videos from different websites"
  homepage "https://software.charliemonroe.net/downie.php"

  livecheck do
    url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Downie #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Downie-#{version.major}-Downie-Extension",
    "~/Library/Preferences/com.charliemonroe.Downie-#{version.major}.plist",
  ]
end
