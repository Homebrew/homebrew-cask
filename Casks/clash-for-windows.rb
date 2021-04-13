cask "clash-for-windows" do
  version "0.15.2"
  sha256 "840a1db50925dbbe0c5368400ced64df2300b4b28b35455ac64a64559b3dc0d7"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
