cask "clash-for-windows" do
  version "0.14.6"
  sha256 "af8ee29efdf130780e0d28ee0548118479f5c667ce0eee7e71c84626a4d8f1d0"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
