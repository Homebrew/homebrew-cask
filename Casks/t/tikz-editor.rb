cask "tikz-editor" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "6cd4d86c62cd3acb9bdb8652e8e7bb15bd552bc90eab0f11f138acabb5bd3503",
         intel: "c88476b008a699c475fbdc34359f66ca00286beed0ff3f48c41ffd3449714ee0"

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
