cask "netron" do
  version "4.4.3"
  sha256 "706b5efe3cbfeb9deb966d42faf7b10ef29d3cd217e49d597479a8f20ef1fc23"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
