cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.6"

  if Hardware::CPU.intel?
    sha256 "d0d386776691b762ff2f2bf196850b2c71a2edf5ca5e349905ca568501428aeb"
  else
    sha256 "708a641fafc0e102a3eed7cd7bea7b09686fc8e13e8a07269123dc44a6ba8639"
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
