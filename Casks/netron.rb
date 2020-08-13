cask "netron" do
  version "4.4.4"
  sha256 "8e46d220af2899e3af1dbd0d30c9ecc1faf53710f7002dfb2e4bf3437f6cbc8a"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
