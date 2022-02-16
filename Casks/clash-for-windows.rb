cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.8"

  if Hardware::CPU.intel?
    sha256 "61190385eca71d51d0b20a1118ff991e2e13d2a699e0f607c38237cd8c0397b0"
  else
    sha256 "0160da0d6cefd53c887256019db34bf4761ffb5832efbd98ed1770522bed16de"
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
