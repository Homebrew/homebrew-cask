cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.14"
  sha256 arm:   "1eb419a6b7989ca99ea4fee54acb21af402f44350445887faee44793ab8ea23d",
         intel: "55489bd5c6e87395385593650a04f20db2f33ae95b397a6cf2277ab7bf13e58e"

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
