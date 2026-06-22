cask "revpdf-editor" do
  arch arm: "arm64", intel: "x64"

  version "4.5.0"
  sha256 arm:   "fedaee23456bcc5eba23340e1bf274a6ece8c8af8a65e41232de085b7c7dc565",
         intel: "bf2083bd7891d4414eedbb79c94f2d50584f6f218edcec749c5450aadca56bcc"

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
