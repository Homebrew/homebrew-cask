cask "clash-for-windows" do
  version "0.11.5"
  sha256 "4d59021fadd98b2e63537f9c3b984f4a2c876fd73123acc0d357b3809b0990c8"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
