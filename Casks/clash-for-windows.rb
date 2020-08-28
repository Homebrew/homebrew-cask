cask "clash-for-windows" do
  version "0.11.6"
  sha256 "fbbab5759864d69a3d963103351f6e52d46cbcbb3644c5a0a93f01ef44b99139"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
