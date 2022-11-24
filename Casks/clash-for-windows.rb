cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.9"
  sha256 arm:   "605ced16e5a9821eb075f399d9bb3aa8e672287ae231d5067f47aa982d4b081c",
         intel: "d057eae2f0d8696d75a4f25d0c522fa55799ffb47a0ae47b3877d8297fb0c48b"

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
