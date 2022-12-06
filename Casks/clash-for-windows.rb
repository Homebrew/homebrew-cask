cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.10"
  sha256 arm:   "339b2b3be13778da28c43774353ebf25f68753782e9ed10e5b507f9335d4b9a6",
         intel: "4defef55b6d0b10d8e8ba1d16e7d24b191a0b94dcf6d7e558d9ceff6d9fedd02"

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
