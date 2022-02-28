cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.10"

  if Hardware::CPU.intel?
    sha256 "017719207108eaf55d04fc3bd6fabedf79bf8222e14a916fe62fbb995a2ee0b2"
  else
    sha256 "1f0d0f45c2d9fcad02a327f3114a0d2ae94b119967ba007bb4f97a930662afb5"
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
