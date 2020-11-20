cask "clash-for-windows" do
  version "0.13.4"
  sha256 "56642f9b9278e07e770e5e63cc509e030c75aa7bffb9f652edde9223daeb8e2d"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
