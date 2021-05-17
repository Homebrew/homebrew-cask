cask "nota" do
  version "0.26.0"

  if Hardware::CPU.intel?
    sha256 "a07d8fb1e80cba7f409c042e90a2b38d728f4abe76776352638d6e8c67b0caaa"

    url "https://github.com/notaapp/releases/releases/download/#{version}/Nota-#{version}-mac.zip",
        verified: "github.com/notaapp/releases/"
  else
    sha256 "35211c21ccd8d4d8e6b6c7432fa9f3d13d19c4ab4f6aff40375e2bd037a99482"

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
