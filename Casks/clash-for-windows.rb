cask "clash-for-windows" do
  version "0.15.4"
  sha256 "749729ed774af61aeac08f577f153d2ab0c351ba281fdf708f864a9617bce913"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
