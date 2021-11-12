cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.18.8"

  if Hardware::CPU.intel?
    sha256 "070282f0cd6435d7f0a3e9bde8d19c7f3f0978dfa9be3bb363fb29ab1d70644f"
  else
    sha256 "b1071aa7dc40db209cb0885a4acd343182a38cc26dc8fb8938a96e3c713cc7d9"
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
