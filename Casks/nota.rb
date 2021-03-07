cask "nota" do
  version "0.23.1"
  sha256 "00e92be3991e4ea74b224d4cb5dfd529c07f54e691d2e0987a62330858a012af"

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
