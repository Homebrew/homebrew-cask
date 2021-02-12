cask "clash-for-windows" do
  version "0.14.5"
  sha256 "f297c707d463e23b5e4d5e1f9968099db189e1d548aabaf08e658e89bff98453"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
