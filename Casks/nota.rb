cask "nota" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.37.0"

  if Hardware::CPU.intel?
    sha256 "79d2dc140abe5068fd45f02047d49834804f20646b401b711497bffd1b6f5b95"
  else
    sha256 "bafdf706361e67858055c22b0a461935e4fe48258685e4f54aa8dabc35e0d583"
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
