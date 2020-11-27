cask "clash-for-windows" do
  version "0.13.5"
  sha256 "e016c462d559c33c8ca0c434a2fbe5b9f4df9f3021f9b3d0ecbf11192ef7daae"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
