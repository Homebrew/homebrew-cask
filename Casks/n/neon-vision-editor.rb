cask "neon-vision-editor" do
  version "1.9.2"
  sha256 "89cae582e50a833f95c3318f94de7c7e573dc3b24c43b6a74b1ff1e8b7a49e4c"

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
