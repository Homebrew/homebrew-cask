cask "netron" do
  version "4.4.6"
  sha256 "907a6c26067b78e6440038e650ee6c5cdd278ab079d52eb9c326048ab2dabe58"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
