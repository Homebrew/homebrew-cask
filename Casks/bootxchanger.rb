cask "bootxchanger" do
  version "2.0"
  sha256 "cfb05680ab6a7d0b1793a33135dd15562a7b5fd59bb1ebf3ad6067c2c9fad6c1"

  # github.com/zydeco/bootxchanger/ was verified as official when first introduced to the cask
  url "https://github.com/zydeco/bootxchanger/releases/download/v#{version}/bootxchanger_#{version}.dmg"
  appcast "https://github.com/zydeco/bootxchanger/releases.atom"
  name "BootXChanger"
  desc "Utility to change the boot logo on old Macs"
  homepage "https://namedfork.net/bootxchanger/"

  app "BootXChanger.app"
end
