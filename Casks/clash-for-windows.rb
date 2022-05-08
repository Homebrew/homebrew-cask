cask "clash-for-windows" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.19.17"

  if Hardware::CPU.intel?
    sha256 "657f7c05c9be3490638f477fc45fa13954d2c22742e3118df5a45b2b4966911b"
  else
    sha256 "b7df6269be8c566d2abe463c793aa248d67c3ee5dee388709b17a1476a98c00c"
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
