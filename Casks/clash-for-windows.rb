cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.13"

  if Hardware::CPU.intel?
    sha256 "74ad39dab84d92b142563fe1d0f85f5fd0043f2cd6cb2fd6e98ba7735f2635b2"
  else
    sha256 "393b01028b89facbe0d95cf5b4f1827b88e229249c2967aef480cbf04e4c15db"
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
