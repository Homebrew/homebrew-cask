cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.2"

  if Hardware::CPU.intel?
    sha256 "b74b677ac690fdbab46c17e4b7ead1971ca8c6a4e8f2abde3e5bb637033b74f6"
  else
    sha256 "95c4461c961221ca06634e08719a5587220bcdc208b7f053bfe505f93279ccff"
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
