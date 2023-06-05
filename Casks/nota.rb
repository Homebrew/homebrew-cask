cask "nota" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.40.4"
  sha256 arm:   "1ee4841c8026f5b65f1f8d645f4f96d5ca4c24f1388d2086268dbc75aea3b62c",
         intel: "cb56bc307291ea1e5e0a6e87875f4bab0482ed054955a3f810e3af44b8c4bc61"

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
