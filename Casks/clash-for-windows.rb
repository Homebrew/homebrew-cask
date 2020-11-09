cask "clash-for-windows" do
  version "0.13.2"
  sha256 "7e971d5fc8c836a020250effd0f61a35b3229f92ecdb701bf8460169eb96cbef"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
