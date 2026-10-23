cask "tikz-editor" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "ce9d5c33a633f31a180e48834041e50b4a418825e8adb151348bfaefffcc2071",
         intel: "13057f0f680e805938a69db9aafba1cdb17b72d37adccbe425e832d8272708c6"

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
