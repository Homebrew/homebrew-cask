cask "netron" do
  version "4.4.5"
  sha256 "a7ce72e862b4952d25ae913232aed670c7a2e9544157c8b6fded9d4c8ed818ac"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
