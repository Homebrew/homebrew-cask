cask "clash-for-windows" do
  version "0.14.1"
  sha256 "6eff47f82616f897e216e7f2b737c3181013f6726e4062b2395e367e4968dcb4"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
