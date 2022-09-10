cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.2"
  sha256 arm:   "59ee96f0337e271f312ae96c973a668a8e4c8a2114ba05a04559120ac2d907f0",
         intel: "c95f48380c91e2887d290b1a88f6b5b1690d7427b7d095286dca74fe6b119868"

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
