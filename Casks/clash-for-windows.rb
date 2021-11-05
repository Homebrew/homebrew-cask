cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.18.7"

  if Hardware::CPU.intel?
    sha256 "91e5284b2a452ca00e75c517ccfe26674e9dc996fcd14df37dda5bcf4f0529ef"
  else
    sha256 "09bb7a6538952a9d3b5455bda4c8ad72de5a5ae9c226e160198da75793890f8c"
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
