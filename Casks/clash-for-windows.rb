cask "clash-for-windows" do
  version "0.14.3"
  sha256 "50cc9e37e96eb4d359a5db391aac5f5b719b99ba4ed2f42bd57edc7de1113e04"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
