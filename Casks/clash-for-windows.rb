cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.7"

  if Hardware::CPU.intel?
    sha256 "ec92f29dde3b9c360183252b34d1548e529559800a594094da4d6c05048cac05"
  else
    sha256 "0d24ca38a284f22bca9bb46e2794c4a15bd2df317c4d82944334fb6ac6c0c2be"
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
