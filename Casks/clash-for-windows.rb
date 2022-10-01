cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.5"
  sha256 arm:   "cd9eef9720e2a0d37486b9f46a92e5d61c99cf47e6e2e71513a9cf6cb481da87",
         intel: "d719405fa80267ef7b70bb680b1287b3734808836bd6dfec597676e73bd523bc"

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
