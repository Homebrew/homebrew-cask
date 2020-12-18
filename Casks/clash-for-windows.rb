cask "clash-for-windows" do
  version "0.13.7"
  sha256 "dbf45366dbdcee57025b6568866499567de2e620ee20fdc36b974ce96de69f6c"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
