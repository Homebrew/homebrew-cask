cask "netron" do
  version "4.4.9"
  sha256 "26054955ec1134d09b23db26207a0bda44d97477230d685a3d99c6e93c911208"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
