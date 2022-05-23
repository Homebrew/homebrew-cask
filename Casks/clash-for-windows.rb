cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.19"

  if Hardware::CPU.intel?
    sha256 "ef630462fbd2b50143a7ca2832a33cae9fa8235e01e709c719286b4910369560"
  else
    sha256 "382f3daa51783419c1f6fd6de5676211ea3369eedcd1a990ca1f8c4807a9e868"
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
