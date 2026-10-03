cask "tikz-editor" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "feb9c922edc1c0e15d08125d416de66dd6885ca200e21b4417f2b95153084e9c",
         intel: "64ec748fbb0e2e6138065789bfd305c127bd80d3c2ac14832af1e1654cd07394"

  url "https://github.com/DominikPeters/tikz-editor/releases/download/app-v#{version}/TikZ.Editor_#{version}_#{arch}.dmg"
  name "TikZ Editor"
  desc "WYSIWYG editor for TikZ diagrams in LaTeX"
  homepage "https://tikz.dev/editor/"

  depends_on :macos

  app "TikZ Editor.app"

  zap trash: [
    "~/Library/Application Support/com.tikz.editor",
    "~/Library/Caches/com.tikz.editor",
    "~/Library/WebKit/com.tikz.editor",
  ]
end
