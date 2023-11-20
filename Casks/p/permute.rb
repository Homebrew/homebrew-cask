cask "permute" do
  version "3.11.2,2723"
  sha256 "f004c43ed64c42e3b485d56a71043b15c10b1d54cd9f2dab4c1960800a313d2c"

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
