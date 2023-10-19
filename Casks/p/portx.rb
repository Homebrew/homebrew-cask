cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.2,10.49"
  sha256 arm:   "848F25E81AAF45929DB8F7A2C0AC80AAA7EFFA3D5844391C5E6ED645655DE4E8",
         intel: "986E9669A89C0BF07EEC1854DDF626F57C8360F3E6263FD8517C3C442E7A0877"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg"
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
