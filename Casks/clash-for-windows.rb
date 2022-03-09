cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.11"

  if Hardware::CPU.intel?
    sha256 "c16535006e8c86d855aca0ddce029bff5cbab6e3150726f57fa00c4530606e2c"
  else
    sha256 "59b6cc2720196bffcd853b9c5496440a6ca1b72ede6d1fbfd0957ca22c2db4ce"
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
