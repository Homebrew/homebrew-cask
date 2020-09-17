cask "brook" do
  version "20200909"
  sha256 "7762ad30c86503974542e739e94e252f0721869a5ca00927df00b3338870577b"

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  appcast "https://github.com/txthinking/brook/releases.atom"
  name "Brook"
  desc "Cross-platform proxy/vpn software"
  homepage "https://github.com/txthinking/brook"

  app "Brook.app"
end
