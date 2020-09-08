cask "netron" do
  version "4.5.0"
  sha256 "f5deaa07d0e2494b253b997a1e649d9ac432dfbf178a52cb7e7675b0e2b1ad08"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
