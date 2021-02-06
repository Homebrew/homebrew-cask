cask "clash-for-windows" do
  version "0.14.4"
  sha256 "dcff593aea845e82d3256341ba2584af445be24a2bd7ba2bdc932b006bc93adf"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
