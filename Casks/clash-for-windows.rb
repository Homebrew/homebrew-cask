cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.18.4"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "ff54b1a008c4ef5e3cbbac661e842e1e4390625a5343b9c20e981ca87add2ef3"
  else
    sha256 "2e13eba179ba63491d51fe95978e66b5bf95657083cdbe0f7512918f180b22c5"
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
