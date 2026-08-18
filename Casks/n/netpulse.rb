cask "netpulse" do
  version "4.0.0"
  sha256 "9f1f262a0cd7720448fb3dd673ac12dd6e5999dabe9c7adcca688fa7e9af5db1"

  url "https://github.com/bwnbits/NetPulse/releases/download/v#{version}/NetPulse.dmg"
  name "NetPulse"
  desc "Lightweight native macOS menu-bar network monitor"
  homepage "https://github.com/bwnbits/NetPulse"

  depends_on :macos

  app "NetPulse.app"
end
