cask "tikz-editor" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "d8cd038813a13ff25639a4134b7fc368dc4334e019f04cebccef1588484849cd",
         intel: "07c4f14030126ec186b748ebc083ebc1a3c930e31aff2eb9c4fa74cf0ad02cd2"

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
