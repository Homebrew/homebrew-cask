cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.24"

  if Hardware::CPU.intel?
    sha256 "9167470a8c40df899eb8b9b34ee8db9d81a181fef61deebafc46174c50108d09"
  else
    sha256 "bf22b201e259eed809a68888a8951e18ccc186735b31a8ba62e032dda1a226be"
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
