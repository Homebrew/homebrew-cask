cask "clash-for-windows" do
  version "0.14.9"
  sha256 "49c6b9c47146c993964211ce6add57c39be7e7d1b243cb212e334afc3d0fdb0f"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
