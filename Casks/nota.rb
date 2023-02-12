cask "nota" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.39.2"
  sha256 arm:   "20b05ee09342f4cb2eddef9037c3a6a3c84f1989bac6fefa47c82866d61ad5d1",
         intel: "ef141db0a6f2af7d9047a8d62c89ce42dc34004b445ee79ddcc1189013aff629"

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
