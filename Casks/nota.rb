cask "nota" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.36.0"

  if Hardware::CPU.intel?
    sha256 "47bf6be7cbb78b98e6115e0a75ccc319bec12b7706ad9dbd625f86dc0eed4a73"
  else
    sha256 "72c2fcd0788fed16d406abb51cae94cb556e1490c340fa3e0021ed5bbf00156f"
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
