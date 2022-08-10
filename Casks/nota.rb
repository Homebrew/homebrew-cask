cask "nota" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.38.0"

  if Hardware::CPU.intel?
    sha256 "997d469d72139b2dd80b74fb4e77dd089322987a5838b76d8fb5908d8aca49eb"
  else
    sha256 "775e4f4e4c4efb24f74a31ff4355b2456e3d3ff0eca9c0c6db60c831bd3e9623"
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
