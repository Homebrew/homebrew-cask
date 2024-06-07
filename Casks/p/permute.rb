cask "permute" do
  version "3.11.10,2755"
  sha256 "7c4947268320414552824021aca3357715c6d5c7ed1ee125023529a0d27bcf64"

  url "https://software.charliemonroe.net/trial/permute/v#{version.major}/Permute_#{version.major}_#{version.csv.second}.dmg"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://software.charliemonroe.net/permute/"

  livecheck do
    url "https://software.charliemonroe.net/trial/permute/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Permute #{version.major}.app"

  zap trash: [
    "~/Library/Containers/com.charliemonroe.Permute-#{version.major}",
    "~/Library/Preferences/com.charliemonroe.Permute-#{version.major}.plist",
  ]
end
