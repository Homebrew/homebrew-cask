cask "nota" do
  version "0.30.0"

  if Hardware::CPU.intel?
    sha256 "c4cf8b5ca66999dd7226d0e854ced7f7318415df3a7dfdee689d7e250f682a4e"

    url "https://github.com/notaapp/releases/releases/download/#{version}/Nota-#{version}-mac.zip",
        verified: "github.com/notaapp/releases/"
  else
    sha256 "3f54464561409899eb1945e7a741f59b0b6dd175c43fb74b19877e8d90574a43"

    url "https://github.com/notaapp/releases/releases/download/#{version}/Nota-#{version}-arm64-mac.zip",
        verified: "github.com/notaapp/releases/"
  end

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
