cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.18.10"

  if Hardware::CPU.intel?
    sha256 "d10c75861339fa35d7125021d4cfe0a1e78176d1bf85ec8b6acdb875235f249d"
  else
    sha256 "6b7b128a91e96b74f4a9050f5d63501a6af48f6f6d72ec2c151750f79603bb59"
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
