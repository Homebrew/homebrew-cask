cask "nota" do
  version "0.31.0"

  if Hardware::CPU.intel?
    sha256 "95fa52e74389411e779d0cb0c96bb7583537ef3674df3f387084b8c5461c4731"

    url "https://github.com/notaapp/releases/releases/download/#{version}/Nota-#{version}-mac.zip",
        verified: "github.com/notaapp/releases/"
  else
    sha256 "6731b6c0c534997e5b576cc0b9253b304f1e058b363c24723673dcb77ca1d927"

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
