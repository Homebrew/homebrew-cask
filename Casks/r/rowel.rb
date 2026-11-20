cask "rowel" do
  version "1.1.2"
  sha256 "9d503db0513860e1e7bd2900d267c3aa7845a41387e9ffb6678a507426f30e93"

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
