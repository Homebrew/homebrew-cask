cask "nota" do
  version "0.19.0"
  sha256 "8a886aff583d66b82bfbe1925f83376c30d5bb8fca5755f14c010f7944b8bea0"

  # github.com/notaapp/releases/ was verified as official when first introduced to the cask
  url "https://github.com/notaapp/releases/releases/download/#{version}/Nota-#{version}-mac.zip"
  appcast "https://github.com/notaapp/releases/releases.atom"
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
