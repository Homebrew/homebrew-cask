cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.8"
  sha256 arm:   "5bf4ee9f0ae3fe021af2b2ee3e06c600876975428c088a6a89be280132fb0041",
         intel: "f1efbceb0522908e0bf61059b5f93a7f317ea2b3c0276fca90701553dd0022bc"

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
