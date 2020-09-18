cask "clash-for-windows" do
  version "0.11.9"
  sha256 "493ae6f559feaea29b44e9959a2b542409fb647ea3a0a12819e1381509cf0fee"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
