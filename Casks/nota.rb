cask "nota" do
  version "0.19.2"
  sha256 "6a3f9a1a4a296e1479df2aa3d616aa27c2f3eae741b65cbc8607919b62690596"

  url "https://github.com/notaapp/releases/releases/download/#{version}/Nota-#{version}-mac.zip",
      verified: "github.com/notaapp/releases/"
  name "Nota"
  desc "Markdown files editor"
  homepage "https://nota.md/"

  livecheck do
    url :url
    strategy :git
  end

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
