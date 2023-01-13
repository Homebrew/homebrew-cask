cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.12"
  sha256 arm:   "74abd91dba441d8cd6fbe56ad990ee947378e07e9bc7366d0cdd145ccd20b419",
         intel: "52423a24443d94630252da7e19547dc02ff92d473aaa2481eabe041f6ac071ed"

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
