cask "permute" do
  version "3.7.1,2511"
  sha256 "e6f1f3f30dba5b8a218c9040c26a64d6a526bac0ed3fa5f72f70b631268c50a2"

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
