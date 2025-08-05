cask "nota" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.41.0"
  sha256 arm:   "727571f727486376127f0a52b8b460f2bc6ab152e3f2c7377eb7154ef5ec88dd",
         intel: "4ef87e0c7f5cbf796eb6a730569334cc02db76f50ecb06f475847d2ea155ee90"

  url "https://github.com/notaapp/releases/releases/download/#{version}/Nota-#{version}-#{arch}.zip",
      verified: "github.com/notaapp/releases/"
  name "Nota"
  desc "Markdown files editor"
  homepage "https://nota.md/"

  auto_updates true
  depends_on macos: ">= :catalina"

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
