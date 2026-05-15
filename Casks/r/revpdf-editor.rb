cask "revpdf-editor" do
  version "4.0.0"

  on_arm do
    sha256 "63c20ba610a1459cda4a53dcc3a467a1d12caf2f9dc590d755d661051b162697"

    url "https://github.com/Pawandeep-prog/revpdf-release/releases/download/v#{version}/RevPDF_Editor_arm64.dmg",
        verified: "github.com/Pawandeep-prog/revpdf-release/"
  end
  on_intel do
    sha256 "8c71f8374a9db608c773938308fd582646fe44a15e56b18aa22b383249911b42"

    url "https://github.com/Pawandeep-prog/revpdf-release/releases/download/v#{version}/RevPDF_Editor_x64.dmg",
        verified: "github.com/Pawandeep-prog/revpdf-release/"
  end

  name "RevPDF Editor"
  desc "PDF editor for annotation and editing"
  homepage "https://revpdf.com/"

  livecheck do
    url "https://github.com/Pawandeep-prog/revpdf-release"
    strategy :github_latest
  end

  app "RevPDF Editor.app"

  zap trash: [
    "~/Library/Application Support/RevPDF Editor",
    "~/Library/Caches/com.revpdf.editor",
    "~/Library/Preferences/com.revpdf.editor.plist",
  ]
end
