cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.18.6"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "240945993a8c8d091a4e7763ebd081a5d5306764ff1b1f795e8569a0270d988e"
  else
    sha256 "9a6ee617c7ee6e499ae4523733798902774b6e910be83f0571e1fa1d1c0890ad"
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
