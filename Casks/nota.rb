cask "nota" do
  version "0.21.1"
  sha256 "3b8b159ea5ae2af7ce11c875dcb5a897a4e5031a05abfe0ac42a26dc67ddfd32"

  url "https://github.com/notaapp/releases/releases/download/#{version}/Nota-#{version}-mac.zip",
      verified: "github.com/notaapp/releases/"
  appcast "https://github.com/notaapp/releases/releases.atom"
  name "Nota"
  desc "Markdown files editor"
  homepage "https://nota.md/"

  auto_updates true

  app "Nota.app"
  binary "#{appdir}/Nota.app/Contents/Resources/app.asar.unpacked/assets/nota.sh", target: "nota"

  zap trash: [
    "~/Library/Application Support/Nota",
    "~/Library/Caches/md.nota.macos",
    "~/Library/Caches/md.nota.macos.ShipIt",
    "~/Library/Logs/Nota",
    "~/Library/Preferences/md.nota.macos.plist",
    "~/Library/Saved Application State/md.nota.macos.savedState",
  ]
end
