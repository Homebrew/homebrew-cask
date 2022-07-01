cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.23"

  if Hardware::CPU.intel?
    sha256 "21cf352f0231457e9ab2a1469e956ec2c049021bc69c206368c21c4d88b03cbe"
  else
    sha256 "a92e1058d673f857df5fc3871f2dcf445027abf433d205301381d19f5a9b497b"
  end

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}#{arch}.dmg"
  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
