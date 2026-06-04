cask "permute" do
  version "4.0.2,4118"
  sha256 "bebb23002d5de4ffa809c5a8f71844b60de7e9805ace6995fab8ca19fc5eccc6"

  url "https://software.charliemonroe.net/trial/permute/v#{version.major}/Permute_#{version.major}_#{version.csv.second}.dmg"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://software.charliemonroe.net/permute/"

  livecheck do
    url "https://software.charliemonroe.net/trial/permute/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Permute #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/*.com.charliemonroe.eney",
    "~/Library/Application Scripts/*com.charliemonroe.Permute*",
    "~/Library/Caches/com.apple.helpd/Generated/com.charliemonroe.Permute-#{version.major}*",
    "~/Library/Containers/com.charliemonroe.Permute-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Permute.MetadataProcessor",
    "~/Library/Group Containers/*.com.charliemonroe.Permute*",
    "~/Library/Preferences/com.charliemonroe.Permute-#{version.major}.plist",
  ]
end
