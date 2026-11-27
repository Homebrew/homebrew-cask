cask "rowel" do
  version "1.2.2"
  sha256 "e9217db2d3fa086fa6a238c3458ea52cbc5d97234604413f4b56d2bc0fc0b572"

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
