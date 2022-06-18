cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.21"

  if Hardware::CPU.intel?
    sha256 "5a0fc0b2f0608ed76429a24d35e192f9c076466dab401c3c389634fc126e465b"
  else
    sha256 "3392deb81a1631c0073bf59c55d04deb7b1e8f30dc7bc021db97946bc8f89b18"
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
