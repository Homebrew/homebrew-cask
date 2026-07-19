cask "neon-vision-editor" do
  version "0.8.9"
  sha256 "6af41fb7c8d894035d36cd3308f14533c7620934951cf48e916370c1d8e80958"

  url "https://github.com/h3pdesign/Neon-Vision-Editor/releases/download/v#{version}/Neon.Vision.Editor.app.zip"
  name "Neon Vision Editor"
  desc "Native text editor for macOS"
  homepage "https://github.com/h3pdesign/Neon-Vision-Editor"

  auto_updates true
  depends_on macos: :sequoia

  app "Neon Vision Editor.app"

  zap trash: [
    "~/Library/Application Support/NeonVisionEditor",
    "~/Library/Caches/h3p.Neon-Vision-Editor",
    "~/Library/Containers/h3p.Neon-Vision-Editor",
    "~/Library/Logs/NeonVisionEditorUpdater.log",
    "~/Library/Preferences/h3p.Neon-Vision-Editor.plist",
  ]
end
