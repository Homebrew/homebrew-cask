cask "rowel" do
  version "1.0.2"
  sha256 "3071746cc13532dc6e436c412b9a238db8806591a95675f51925812d5f818a70"

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
