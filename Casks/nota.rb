cask "nota" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.35.4"

  if Hardware::CPU.intel?
    sha256 "f2b9e9a1d8aa0de9a9f1d3df452af17cad5a33df1e5ed8794751e1e34bac756b"
  else
    sha256 "b02fb231ce4cac30143429bf74121320444aea259f47be2dcbff517c1991a8ac"
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
