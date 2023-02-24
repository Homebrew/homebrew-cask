cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.17"
  sha256 arm:   "87a0e3364cb7b900cd77780afabeb901cbf2f46e78a9454da636e608b6541709",
         intel: "33ba1f27d827815f4c12be9907e0b16f0f7c77a917a945a02b00dd41e4d293a2"

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
