cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.18"
  sha256 arm:   "a662918a89b28ef11132e8c016b1f210e75e387c70e7396c95c2bd455cbd2d80",
         intel: "48f689ab808e2a02dc1ed12e9e281a70de7be58197539b19e17a1758ca73881c"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}#{arch}.dmg"
  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Clash for Windows.app"
end
