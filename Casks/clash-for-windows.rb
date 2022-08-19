cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.19.27"

  on_intel do
    sha256 "b70a89a3b24c6c744abf95a0007cddd69b298fe0c2c3cf3750fc5c04f77da131"
  end
  on_arm do
    sha256 "73da9d4331ef69e56713565de7078555302df25c953f62ce45428465c84057c2"
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
