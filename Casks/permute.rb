cask "permute" do
  version "3.7.8,2540"
  sha256 "894ac7c3e9ceb507978c29782305251ac20962b2a34b3aebc5b13e17ee6be5da"

  url "https://charliemonroesoftware.com/trial/permute/v#{version.major}/Permute_#{version.major}_#{version.csv.second}.dmg",
      verified: "charliemonroesoftware.com/"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://software.charliemonroe.net/permute.php"

  livecheck do
    url "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Permute #{version.major}.app"

  zap trash: [
    "~/Library/Containers/com.charliemonroe.Permute-#{version.major}",
    "~/Library/Preferences/com.charliemonroe.Permute-#{version.major}.plist",
  ]
end
