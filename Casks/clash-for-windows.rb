cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.0"

  if Hardware::CPU.intel?
    sha256 "c79c8b3beee96d970dc8bd1b7816e2da9828203cdff589997ba8d9387fa814f5"
  else
    sha256 "2181a6db75ca8d367ea5c5b2bc9407feab77c0e75ab512f0bec275fcc8083c7c"
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
