cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.0"
  sha256 arm:   "81b7b003161f4160c9a4987c1eff2c257f96800c1b658f230186d307c0d0cf21",
         intel: "657fdbde5592c1d15ff9a68b7dd3bf3cacdec5071440ea4e13a01d0da99c00b9"

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
