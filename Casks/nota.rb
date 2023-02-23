cask "nota" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.40.0"
  sha256 arm:   "b7395006b0487a9e635f938f53098d84c7c1ffd4bfe7e9bfd62550175b27b584",
         intel: "0f454d3c9b45a285724934e6968e1d5ee31f00b007bd4a425c9df4266c897245"

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
