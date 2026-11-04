cask "tikz-editor" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "b2a9f759bd1b84d9d0f75d660d6cec3bbdd02d49605e32143b997fa13df70553",
         intel: "60f006a859ad98aab48ff1c3efa7efbe220135f7c8aaf108db383481a6fcfdf3"

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
