cask "nota" do
  version "0.33.0"

  if Hardware::CPU.intel?
    sha256 "6c86abf1886b2b7ac96220e6f5ea11d851d50c5457f284bd2d401991d07b233a"

    url "https://github.com/notaapp/releases/releases/download/#{version}/Nota-#{version}-mac.zip",
        verified: "github.com/notaapp/releases/"
  else
    sha256 "dfd6ed72b9cae7f61df43dc887f9c433ce97f4d72b4ebf8487594f89d91ce034"

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
