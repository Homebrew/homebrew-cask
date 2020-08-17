cask "onepile" do
  version "2.3-1120"
  sha256 "b88e38120bfb124cfe2ba7faa73384757c4c137dc1760617e67a8ecdadaa0fee"

  url "https://onepile.app/update/macos/OnePile-#{version}.zip"
  appcast "https://onepile.app/sparklecast.xml"
  name "OnePile"
  homepage "https://onepile.app/"

  depends_on macos: ">= :high_sierra"

  app "OnePile.app"
end
