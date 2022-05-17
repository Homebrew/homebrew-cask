cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.18"

  if Hardware::CPU.intel?
    sha256 "986b88449180b42bee99d842b49129092fb312f6065e5b7da8ea3b723bdab1a9"
  else
    sha256 "e87bea99fecf7350e2e59afc209c39153607e9fc8b1033f958e53b1227ad602b"
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
