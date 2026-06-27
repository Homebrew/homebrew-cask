cask "tikz-editor" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "366fb1d1727a205737ec3da0a56d94f8d15723ad3efe2707fbd6452549d28a20",
         intel: "f2b553745904a33f6b1f5c0a65db1b14b70b2b55ea32058addc85b66746d040b"

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
