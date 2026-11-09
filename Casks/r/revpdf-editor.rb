cask "revpdf-editor" do
  arch arm:   on_system_conditional(macos: "arm64", linux: "aarch64"),
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "RevPDF_Editor_", linux: "revpdf_editor-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "5.0.0"
  sha256 arm:          "f0872364b5533761dc6d638cd4b12246f08a3692ffc7129904341281da97ea57",
         intel:        "c1446d66660e8409f3dc6f9ffe8c0b072fa70c0ffd917597e0ab43f09f9dc49e",
         arm64_linux:  "50ec22e67fc4f7c01bc7e6a59846fa8c3db06116c45904ff5b5edba685030dd8",
         x86_64_linux: "4b275817ed6a4983437bfcb0a7d8a2d25d2903143d2d327960b64589d1c5ae06"

  on_macos do
    app "RevPDF Editor.app"

    zap trash: [
      "~/Library/Application Support/RevPDF Editor",
      "~/Library/Caches/com.revpdf.editor",
      "~/Library/Preferences/com.revpdf.editor.plist",
    ]
  end
  on_linux do
    app_image "revpdf_editor-#{arch}.AppImage", target: "RevPDF Editor.AppImage"

    zap trash: [
      "~/.cache/com.revpdf.editor",
      "~/.local/share/com.revpdf.editor",
    ]
  end

  url "https://github.com/Pawandeep-prog/revpdf-release/releases/download/v#{version}/#{os}#{arch}.#{url_end}"
  name "RevPDF Editor"
  desc "PDF editor for annotation and editing"
  homepage "https://revpdf.com/"
end
