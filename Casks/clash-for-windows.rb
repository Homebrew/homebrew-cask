cask "clash-for-windows" do
  version "0.13.3"
  sha256 "83e2e670479bb4dc6ff1952baa160abc863dae8ba42c234deaeea7963913c14d"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
