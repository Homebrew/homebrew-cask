cask "nota" do
  version "0.25.0"
  sha256 "03ab14da8a744b8e43a21e45b2f5efa86fac1908381e028d39ad35a784d09be8"

  url "https://github.com/notaapp/releases/releases/download/#{version}/Nota-#{version}-mac.zip",
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
