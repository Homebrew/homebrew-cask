cask "neon-vision-editor" do
  version "0.9.9"
  sha256 "5de5a9ba44ceb873a3a516894d0f71f52540696d3b3348c610a63318842c16e2"

  url "https://github.com/h3pdesign/Neon-Vision-Editor/releases/download/v#{version}/Neon.Vision.Editor.app.zip"
  name "Neon Vision Editor"
  desc "Native code and text editor"
  homepage "https://github.com/h3pdesign/Neon-Vision-Editor"

  auto_updates true
  depends_on macos: :sonoma

  app "Neon Vision Editor.app"

  zap trash: [
    "~/Library/Application Support/NeonVisionEditor",
    "~/Library/Caches/h3p.Neon-Vision-Editor",
    "~/Library/Containers/h3p.Neon-Vision-Editor",
    "~/Library/Logs/NeonVisionEditorUpdater.log",
    "~/Library/Preferences/h3p.Neon-Vision-Editor.plist",
  ]
end
