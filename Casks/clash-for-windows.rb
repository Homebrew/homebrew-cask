cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.14"

  if Hardware::CPU.intel?
    sha256 "c84e0a4ba8e4c680dcb3e5d0df8704e5f35923b3946150ba7ac910cfd8c3bde4"
  else
    sha256 "ce87f1e6bb9a800e44c5e44317ae34d76bbef53bb1c6fe517351789a03d434ac"
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
