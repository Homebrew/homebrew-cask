cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.16"

  if Hardware::CPU.intel?
    sha256 "115a91505e2fea29ffe576f5be6bee88b8f6c2b4537b5c710fc86c46d99535eb"
  else
    sha256 "d9b21bb7dc94623c6930461b300bdc3c424cd50ad81640db39fac3a4051c0988"
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
