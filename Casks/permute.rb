cask "permute" do
  version "3.6.4,2419"
  sha256 "cb8fb67bebf2f96fa35e140b717d83ad233d8106ff44f6da4ac44fbd652e3e80"

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://software.charliemonroe.net/permute.php"

  livecheck do
    url "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Permute #{version.major}.app"

  zap trash: [
    "~/Library/Containers/com.charliemonroe.Permute-#{version.major}",
    "~/Library/Preferences/com.charliemonroe.Permute-#{version.major}.plist",
  ]
end
