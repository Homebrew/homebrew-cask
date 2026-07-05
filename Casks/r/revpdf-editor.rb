cask "revpdf-editor" do
  arch arm: "arm64", intel: "x64"

  version "4.6.5"
  sha256 arm:   "ecf423a9dd25d51eef91c921644cd793146f928359254bd17f0fe42ceadc3378",
         intel: "c9258ff23e72903d867c4150ee57e0ec0a5146c2d9a6038e4a61d384e09f11f2"

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
