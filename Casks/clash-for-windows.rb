cask "clash-for-windows" do
  version "0.14.8"
  sha256 "8a7137a2951c797c175a96f116f9e9d1fb37b86399ee43f9e6bcfa3d5df216aa"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
