cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.4"
  sha256 arm:   "79de58907ce73757dbedc6128ff9c6825e4f32f752bd5f69158b338d11e61e53",
         intel: "4bec806d376cb4ad187b3206967cec19678167e33b9c46c998bfd25118cba539"

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
