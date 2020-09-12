cask "netron" do
  version "4.5.1"
  sha256 "5a6bbbc4b40707016c06ec48de5836a1efa34f5405089cac6b0ebae91265bfdf"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
