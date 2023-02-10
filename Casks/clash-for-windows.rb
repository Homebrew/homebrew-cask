cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.16"
  sha256 arm:   "a7dad7e9c5daa3e4b541468bfb08a0d259295676db6d654078e948d368662f79",
         intel: "656289caf575638f2c27c4a50fbd782000137a782ab96065ebf4fd9b2ce33379"

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
