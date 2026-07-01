cask "tikz-editor" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "fea06282c1e7a32910e07733e9a518eb3e1b623dcda1b7d9ddee6fc259b717f3",
         intel: "7a62528010ed03c886926de2f56a5d95772bea0b170068e7238aed71463aba08"

  url "https://github.com/DominikPeters/tikz-editor/releases/download/app-v#{version}/TikZ.Editor_#{version}_#{arch}.dmg",
      verified: "github.com/DominikPeters/tikz-editor/"
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
