cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.12"

  if Hardware::CPU.intel?
    sha256 "d03c7e07161c56734a6c890962928dfe88e9c72e86f219f9ce575fc8706c9eb6"
  else
    sha256 "7ff436b6460df711ae6333bd534ba59791536233887c241d823ed3beb366a80b"
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
