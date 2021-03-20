cask "clash-for-windows" do
  version "0.14.10"
  sha256 "fca51f49f9f43cb00e05d737f8ae39d309e1ee9eb360e9a3085e6b3b7ceaca76"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
