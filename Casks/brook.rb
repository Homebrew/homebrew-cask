cask "brook" do
  version "20210101"
  sha256 "4bcf42d6fc8777e96890e2ea0a181170da076cece59816cb3844d92320c6d781"

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  appcast "https://github.com/txthinking/brook/releases.atom"
  name "Brook"
  desc "Cross-platform proxy/vpn software"
  homepage "https://github.com/txthinking/brook"

  app "Brook.app"
end
