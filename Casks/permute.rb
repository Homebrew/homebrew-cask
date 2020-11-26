cask "permute" do
  version "3.5.11,2322"
  sha256 "b57580ddbf6f46cddd9ecde476af6eceb826dc98b656d02891f6527a2fd2d6f8"

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://software.charliemonroe.net/permute.php"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Permute #{version.major}.app"
end
