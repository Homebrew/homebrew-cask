cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.18.9"

  if Hardware::CPU.intel?
    sha256 "33ca1004ba19d425f1b1b82b1e29e42df2ac0fcce5a7ed159314b88d6faa11d1"
  else
    sha256 "0822306dec816772dc9fa0ed9ab317a4f8ca029e537edaaac2add7f1941a35cc"
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
