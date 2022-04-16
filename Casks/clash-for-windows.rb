cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.15"

  if Hardware::CPU.intel?
    sha256 "58de4934a03e9405658e9b9b58213dfed807dbf4f160a6ed6be33293cdeec2db"
  else
    sha256 "4a6eb8c4348e138eb8484c6c6907add7a116edacb8fa390fa9408a33e8f9986e"
  end

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
