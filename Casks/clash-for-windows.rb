cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.3"

  if Hardware::CPU.intel?
    sha256 "f9d42634afa837a9fbd40c755b8e7e3e567b1a015f841868fae342abf99d0c78"
  else
    sha256 "e17b124b4d5a25a687e34f87db53b3d5ab4ea6a9e1bbb80e5916532767280b64"
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
