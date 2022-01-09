cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.5"

  if Hardware::CPU.intel?
    sha256 "fb2b4e0ca56e40c311b9b1094c53c9245155c4ebe94dca85ebb36ff9c0b411f2"
  else
    sha256 "76ea6312e43dd43b8696fe97fc21d267ae5e43a619ec642a05e571cbb8b6895a"
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
