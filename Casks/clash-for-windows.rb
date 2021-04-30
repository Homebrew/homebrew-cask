cask "clash-for-windows" do
  version "0.15.4"

  if Hardware::CPU.intel?
    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
    sha256 "749729ed774af61aeac08f577f153d2ab0c351ba281fdf708f864a9617bce913"
  else
    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}-arm64.dmg"
    sha256 "c6e1766e6bf15cf80d37871401b840516c8896dcb418770f4e9faaaf316db0b3"
  end

  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
