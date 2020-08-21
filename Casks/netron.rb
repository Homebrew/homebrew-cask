cask "netron" do
  version "4.4.7"
  sha256 "471a917522526c57e0a51b10eb7721efc4162943fd7a2b3834c5d5ab761e704c"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
