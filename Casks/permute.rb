cask "permute" do
  version "3.5.5,2305"
  sha256 "dc2c6002a6f067aa250e0f383cbcf46cd66b4f963d96cdab3f9706e9c1bf165a"

  url "https://trial.charliemonroe.net/permute/v#{version.major}/Permute_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/permute/updates_#{version.major}.xml"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://software.charliemonroe.net/permute.php"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Permute #{version.major}.app"
end
