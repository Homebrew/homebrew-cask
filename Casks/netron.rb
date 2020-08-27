cask "netron" do
  version "4.4.8"
  sha256 "268e2a721ccfaac0c4650a70fc766142fe2650335f06993c5ecabac40dd703be"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
