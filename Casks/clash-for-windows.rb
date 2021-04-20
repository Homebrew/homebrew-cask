cask "clash-for-windows" do
  version "0.15.3"
  sha256 "2369f9dcdf4cb7d4a0cf1ba86d928f0706507b328ae50d66070ba5ec19355014"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
