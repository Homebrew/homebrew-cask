cask "permute" do
  version "3.7.9,2545"
  sha256 "08f8a378bbd87c1142c5c54bf685661e437bf61778d20e33298f03e70eab4d4f"

  url "https://charliemonroesoftware.com/trial/permute/v#{version.major}/Permute_#{version.major}_#{version.csv.second}.dmg",
      verified: "charliemonroesoftware.com/"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://software.charliemonroe.net/permute/"

  livecheck do
    url "https://charliemonroesoftware.com/trial/permute/updates_#{version.major}.xml"
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
