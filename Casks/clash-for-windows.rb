cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.18.5"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "de9f6d033efe9ebca5b0ffd82610c4f66359617ac944b56bed8c051539dbd9f9"
  else
    sha256 "3d70027871e91b570850043222abac76d8ed413cfd2d13fb80705058dfb9a34b"
  end

  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
