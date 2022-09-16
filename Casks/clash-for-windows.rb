cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.3"
  sha256 arm:   "65e5967ce22a8e1a974623119e6dcdf68e507f4a23c282d833e52a386d7267b1",
         intel: "af22349e094fc0b733610720e68290d431159a631002a213febbb8522bed072f"

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
