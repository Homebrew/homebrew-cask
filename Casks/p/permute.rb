cask "permute" do
  version "3.14.2,2879"
  sha256 "c081c413146fee60fbabe0d45384aea42d29b20fcfcc4d8f7ad7ebd50c00d035"

  url "https://software.charliemonroe.net/trial/permute/v#{version.major}/Permute_#{version.major}_#{version.csv.second}.dmg"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://software.charliemonroe.net/permute/"

  livecheck do
    url "https://software.charliemonroe.net/trial/permute/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Permute #{version.major}.app"

  zap trash: [
    "~/Library/Containers/com.charliemonroe.Permute-#{version.major}",
    "~/Library/Preferences/com.charliemonroe.Permute-#{version.major}.plist",
  ]
end
