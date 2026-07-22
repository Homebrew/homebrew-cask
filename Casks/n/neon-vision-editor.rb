cask "neon-vision-editor" do
  version "0.9.4"
  sha256 "52c37139ba4555ded44f18931e9a68605be6eb615def0ece82e3bd254c711f16"

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
