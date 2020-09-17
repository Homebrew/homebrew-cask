cask "clash-for-windows" do
  version "0.11.8"
  sha256 "6a768fbc8a0232e591b57ef905d1ace3f3c7495074fa8c556de03f2f8b474a72"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
