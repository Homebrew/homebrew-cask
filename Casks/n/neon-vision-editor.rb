cask "neon-vision-editor" do
  version "2.1.3"
  sha256 "1694b908467d53375151218529697249169d32318c9de5e136fb064fb24d197a"

  url "https://github.com/h3pdesign/Neon-Vision-Editor/releases/download/v#{version}/Neon.Vision.Editor.app.zip"
  name "Neon Vision Editor"
  desc "Native code and text editor"
  homepage "https://github.com/h3pdesign/Neon-Vision-Editor"

  livecheck do
    url "https://github.com/h3pdesign/Neon-Vision-Editor/releases"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Neon Vision Editor.app"

  zap trash: [
    "~/Library/Application Scripts/group.h3p.Neon-Vision-Editor",
    "~/Library/Application Scripts/h3p.Neon-Vision-Editor*",
    "~/Library/Application Support/NeonVisionEditor",
    "~/Library/Caches/h3p.Neon-Vision-Editor",
    "~/Library/Containers/h3p.Neon-Vision-Editor",
    "~/Library/Group Containers/group.h3p.Neon-Vision-Editor",
    "~/Library/Logs/NeonVisionEditorUpdater.log",
    "~/Library/Preferences/h3p.Neon-Vision-Editor.plist",
  ]
end
