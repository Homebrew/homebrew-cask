cask "nota" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.38.1"
  sha256 arm:   "4369ddf0d3f99500b1cc754777279575c026e560a13d30eee9ce25c03e8bf370",
         intel: "548e174254dc7fb76faf7c345021354d0f252098af3c88db674985f2a3b2dbea"

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
