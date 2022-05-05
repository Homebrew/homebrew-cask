cask "nota" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.34.3"

  if Hardware::CPU.intel?
    sha256 "66d044ba1c6f73438609856c1224ece470a4568569b85fc2c6b460095e39a48a"
  else
    sha256 "60e08e46c350c63c66792ea7b45e6b56c80bcdcf2b7669d08562be17108e66f0"
  end

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
