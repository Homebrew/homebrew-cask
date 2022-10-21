cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.6"
  sha256 arm:   "190c3680e0bc456d7e95c2f0c1620801878c7bff7eb08e73440e8da02db86a32",
         intel: "ea0c9bd9fac5607ee2477301d2a12697a7fd6ed76f9f2afba6507eea2ae69fc0"

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
