cask "permute" do
  version "3.6.7,2433"
  sha256 "a18ce15527f16ce4c66375802c40cbac5b0d9980d465b28bd700375de3b6f2ea"

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
