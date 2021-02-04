cask "nota" do
  version "0.22.0"
  sha256 "a3befcf1aa163afe5a0fb8c747e9533f4384e9a55bc2b9e33c8d4434995cbf19"

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
