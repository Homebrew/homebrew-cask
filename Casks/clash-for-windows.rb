cask "clash-for-windows" do
  version "0.13.0"
  sha256 "f961f555e1d7a50d1e796287297f5e803b95a8caf651d0bd73d28306dfc9ef54"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
