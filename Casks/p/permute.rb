cask "permute" do
  on_arm do
    version "4.0.5,4137"
    sha256 "c2f2ed63d372a1dbc6dbe3041b18c6fd88a4a92a6452187cf9b81a0156fa214f"

    depends_on macos: :tahoe
  end
  on_intel do
    version "3.14.8,4018"
    sha256 "eacd8883163f43d9b48ae42e0900096a0f7b323488aaf9276ce49dad017f6649"

    depends_on macos: :big_sur
  end

  url "https://software.charliemonroe.net/trial/permute/v#{version.major}/Permute_#{version.major}_#{version.csv.second}.dmg"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://software.charliemonroe.net/permute/"

  livecheck do
    url "https://software.charliemonroe.net/trial/permute/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

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
