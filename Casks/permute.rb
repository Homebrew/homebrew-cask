cask "permute" do
  version "3.8.2,2559"
  sha256 "77e0afd1b7389c05634075d4d13298c18818d7373531de0991ce7e4fc73a82bc"

  url "https://software.charliemonroe.net/trial/permute/v#{version.major}/Permute_#{version.major}_#{version.csv.second}.dmg"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://software.charliemonroe.net/permute/"

  livecheck do
    url "https://software.charliemonroe.net/trial/permute/v#{version.major}/updates.xml"
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
