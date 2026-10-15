cask "rowel" do
  version "1.0.3"
  sha256 "87616bfdd6d20158a49aa83f19603b126bcc115e37e8169151db598b45062294"

  url "https://github.com/fwdai/rowel/releases/download/v#{version}/Rowel_#{version}_universal.dmg"
  name "Rowel"
  desc "Offline-first password manager"
  homepage "https://rowel.app/"

  auto_updates true
  depends_on :macos

  app "Rowel.app"

  zap trash: [
    "~/Library/Application Support/app.rowel.desktop",
    "~/Library/Caches/app.rowel.desktop",
    "~/Library/Logs/app.rowel.desktop",
    "~/Library/WebKit/app.rowel.desktop",
  ]
end
