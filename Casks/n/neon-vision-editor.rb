cask "neon-vision-editor" do
  version "1.9.1"
  sha256 "9eae97bfbcc90955b66ed2fe7d717ba8c3b214d82c5c63e8e4d49b4d51d06688"

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
