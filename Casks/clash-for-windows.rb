cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.19.28"
  sha256 arm:   "dce346d8df463f2d016945f1d13313f3a1ecc7a2fe4a87a668cc10affd361e44",
         intel: "a373d0b57b24a7caf5680de12f0e5424874766e91c01f4cb90a0cf43c8725d61"

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
