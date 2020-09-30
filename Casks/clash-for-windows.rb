cask "clash-for-windows" do
  version "0.12.0"
  sha256 "45d62846384b459e59d8616bd566e163ebd65753111b84386d1bd9742d4e2aa6"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
