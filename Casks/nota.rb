cask "nota" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.39.1"
  sha256 arm:   "4f6e68e950a82554a8f4e88655d4af28e979bb297f15eb86004f576080500dd8",
         intel: "50aafba3e31eeb1900b537abc44cfb6a643495ae09260d1a92c259427f214172"

  url "https://github.com/notaapp/releases/releases/download/#{version}/Nota-#{version}-#{arch}.zip",
      verified: "github.com/notaapp/releases/"
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
