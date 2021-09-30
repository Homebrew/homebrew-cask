cask "clash-for-windows" do
  version "0.18.3"

  if Hardware::CPU.intel?
    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
    sha256 "1cc040c6e120790f1bb198b0d751fa54d9be3d11c3f069ba1b59b1e681d2f4ba"
  else
    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}-arm64.dmg"
    sha256 "00835794ea7b0335e097425454bc5e95df1ded030f5dabaf53de04187060333d"
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
