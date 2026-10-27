cask "rowel" do
  version "1.1.0"
  sha256 "6f50bdcb304ffadd051b97bf60750ab3dc8264a5c3c2a4849080b54ada357e3c"

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
