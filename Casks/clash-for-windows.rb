cask "clash-for-windows" do
  version "0.11.4"
  sha256 "1451ad719294b7dc7f3ca3e2ca658562b8b4544c80eb714bc93350f276af2748"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
