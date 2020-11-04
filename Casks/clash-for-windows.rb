cask "clash-for-windows" do
  version "0.13.1"
  sha256 "c3e65e68a24e20562f75334746466b662ccbec049b6f35d60642a976770ca691"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
