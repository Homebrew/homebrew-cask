cask "nota" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.36.1"

  if Hardware::CPU.intel?
    sha256 "4c5ce471927e2bf608527c0628bff23cb3da4d29deb403a24d0126af61acabab"
  else
    sha256 "863bb0e70239237a1de4ea64c6622fec1c5838e9e11497134a76287b05c99f8d"
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
