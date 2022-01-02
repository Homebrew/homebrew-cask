cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.4"

  if Hardware::CPU.intel?
    sha256 "92f7f0b1a750dd1b7e1cd0802725ad3a8d30daf6f32186dfec0f0441b8c88296"
  else
    sha256 "84e42c2e5a9e495bc76c4a73d9042687ce4f727fdb2d4a470d4e3a20c0655f30"
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
