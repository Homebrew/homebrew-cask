cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.19"
  sha256 arm:   "8670cbab728305bdefa56eec3fdeea451629a66a9da5b01175bd471a9a16889c",
         intel: "d1536c73ff301e27915e32493f9c6a17d9604faaa1333ae94fde1af626e01fb6"

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
