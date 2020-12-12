cask "noti" do
  version "0.3.2"
  sha256 "3ad018a37b2a16f019aac3680fd83ae6e5580a5548210179d305cdbf330eedad"

  # github.com/jariz/Noti/ was verified as official when first introduced to the cask
  url "https://github.com/jariz/Noti/releases/download/#{version}/Noti.dmg"
  appcast "https://github.com/jariz/Noti/releases.atom"
  name "Noti"
  desc "Utility to show notifications from an Android device"
  homepage "https://noti.center/"

  auto_updates true

  app "Noti.app"
end
