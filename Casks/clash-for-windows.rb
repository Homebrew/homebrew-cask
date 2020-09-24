cask "clash-for-windows" do
  version "0.11.10"
  sha256 "c9eb80c6abb8e85322aea577f6d086c0b70a9ce73d855bfd93e97f2002486abe"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
