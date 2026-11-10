cask "tikz-editor" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "e97bbdf7565fc1037d64fd70b0ed7039cd55e46bf15bf3c473eddc97f456fe21",
         intel: "51af439131e8a9bd53c77caa46a39a7997d1f070bb3b2386755e456cc8cd87bd"

  url "https://github.com/DominikPeters/tikz-editor/releases/download/app-v#{version}/TikZ.Editor_#{version}_#{arch}.dmg"
  name "TikZ Editor"
  desc "WYSIWYG editor for TikZ diagrams in LaTeX"
  homepage "https://tikz.dev/editor/"

  auto_updates true
  depends_on :macos

  app "TikZ Editor.app"

  zap trash: [
    "~/Library/Application Support/com.tikz.editor",
    "~/Library/Caches/com.tikz.editor",
    "~/Library/Preferences/com.tikz.editor.plist",
    "~/Library/WebKit/com.tikz.editor",
  ]
end
