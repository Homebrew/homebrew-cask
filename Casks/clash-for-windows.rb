cask "clash-for-windows" do
  version "0.15.10"

  if Hardware::CPU.intel?
    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
    sha256 "ec42ddcf2620471b908055d9c9ffd80abfb47334bd8cac7e0240ebff1072280e"
  else
    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}-arm64.dmg"
    sha256 "e91449aae0db36125e3a48f9313c2fde42e24efd5277de0e7d3a31176a86dbea"
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
