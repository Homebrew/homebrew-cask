cask "clash-for-windows" do
  version "0.14.2"
  sha256 "914105e1379f875c8770e52374c51d3838e66f1266e794e96480b926c5949f9e"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
