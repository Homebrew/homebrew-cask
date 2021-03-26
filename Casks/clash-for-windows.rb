cask "clash-for-windows" do
  version "0.15.0"
  sha256 "b86d686e611988ad2a53259358367d81916cac6769bae68ae71ecf9dec0b0aa9"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
