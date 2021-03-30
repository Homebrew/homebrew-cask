cask "clash-for-windows" do
  version "0.15.1"
  sha256 "598181d09313532948c4a1e94588da6b54eae3458a1369364dd81bbcb85d99ce"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
