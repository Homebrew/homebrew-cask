cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.22"

  if Hardware::CPU.intel?
    sha256 "4033fc43dccec2b9c509727db855399ec1497f5a332770e7de451aa7498f5978"
  else
    sha256 "55ebc9dcf20a4ad3426a5191916ef8fe4841db01116e8851afe489293a7f85c0"
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
