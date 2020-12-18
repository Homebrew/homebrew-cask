cask "permute" do
  version "3.5.12,2325"
  sha256 "62cf44e4b99e7f8a960d4d44928795888e80d7468b8a8dd23bcdbed81f7c0c26"

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://software.charliemonroe.net/permute.php"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Permute #{version.major}.app"
end
