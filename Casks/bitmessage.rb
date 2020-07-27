cask "bitmessage" do
  version "0.6.3.2"
  sha256 "40a78384a7a0613333dd76aaafc8ebeb08eb1ef02fceb0925763ce289ec5888b"

  # github.com/Bitmessage/PyBitmessage/ was verified as official when first introduced to the cask
  url "https://github.com/Bitmessage/PyBitmessage/releases/download/#{version}/bitmessage-v#{version}.dmg"
  appcast "https://github.com/Bitmessage/PyBitmessage/releases.atom"
  name "Bitmessage"
  homepage "https://bitmessage.org/"

  app "Bitmessage.app"
end
