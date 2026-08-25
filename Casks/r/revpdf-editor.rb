cask "revpdf-editor" do
  arch arm: "arm64", intel: "x64"

  version "5.0.0"
  sha256 arm:   "f0872364b5533761dc6d638cd4b12246f08a3692ffc7129904341281da97ea57",
         intel: "c1446d66660e8409f3dc6f9ffe8c0b072fa70c0ffd917597e0ab43f09f9dc49e"

  url "https://github.com/Pawandeep-prog/revpdf-release/releases/download/v#{version}/RevPDF_Editor_#{arch}.dmg",
      verified: "github.com/Pawandeep-prog/revpdf-release/"
  name "RevPDF Editor"
  desc "PDF editor for annotation and editing"
  homepage "https://revpdf.com/"

  depends_on macos: :big_sur

  app "RevPDF Editor.app"

  zap trash: [
    "~/Library/Application Support/RevPDF Editor",
    "~/Library/Caches/com.revpdf.editor",
    "~/Library/Preferences/com.revpdf.editor.plist",
  ]
end
