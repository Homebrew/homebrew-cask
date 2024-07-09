cask "bootxchanger" do
  version "2.0"
  sha256 "cfb05680ab6a7d0b1793a33135dd15562a7b5fd59bb1ebf3ad6067c2c9fad6c1"

  url "https://github.com/zydeco/bootxchanger/releases/download/v#{version}/bootxchanger_#{version}.dmg",
      verified: "github.com/zydeco/bootxchanger/"
  name "BootXChanger"
  desc "Utility to change the boot logo on old Macs"
  homepage "https://namedfork.net/bootxchanger/"

  disable! date: "2024-07-09", because: "is 32-bit only"

  app "BootXChanger.app"
end
