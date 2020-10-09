cask "clash-for-windows" do
  version "0.12.1"
  sha256 "c664e60d2ef6bad50b0619ed864b32ce35ee2fdc316eb804c10f9bbf85f4ab7d"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
