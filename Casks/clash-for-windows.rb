cask "clash-for-windows" do
  version "0.11.7"
  sha256 "f8a68eaa0408ed6cf4218360f552c26ef476fcb80c18e98c7ecd7070a9c8e1b6"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
