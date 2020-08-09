cask "clash-for-windows" do
  version "0.11.3"
  sha256 "79bdc7bd61ad46f1cdecb1a84090a1ea755ebe6a03f7bf380cd2ed256a52a060"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
