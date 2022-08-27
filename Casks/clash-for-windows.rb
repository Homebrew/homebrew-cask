cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.19.29"
  sha256 arm:   "bee9e38d89c623c5ae4e4c029ec9ac2e0df19670a7295c9bc4b71f91e56a7683",
         intel: "b53d20f2a738fc2a4a8f8d0037d43172ae185eda2676bf82b660919038d5297d"

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
