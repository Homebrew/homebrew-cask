cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.20"

  if Hardware::CPU.intel?
    sha256 "7aa0965780f53f1492ebd2eb20eb9a54c773ce2a5fa510873b36d6595058cc17"
  else
    sha256 "a0fb8200b654e4d27ba344694a606ce7f66076210697a98318b23bec10551bde"
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
