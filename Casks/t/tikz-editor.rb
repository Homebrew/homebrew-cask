cask "tikz-editor" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "e3c81676334cb9a3910cbdaac942f89b98bded255e8593d72cff597cea68631d",
         intel: "46ad24c2b19ef9c2edb2547129b99c4ebe68b030ce74db2353a34f3120aa924c"

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
