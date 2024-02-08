cask "bitmessage" do
  version "0.6.3.2"
  sha256 "40a78384a7a0613333dd76aaafc8ebeb08eb1ef02fceb0925763ce289ec5888b"

  url "https://github.com/Bitmessage/PyBitmessage/releases/download/#{version}/bitmessage-v#{version}.dmg",
      verified: "github.com/Bitmessage/PyBitmessage/"
  name "Bitmessage"
  desc "P2P communications protocol"
  homepage "https://bitmessage.org/"

  app "Bitmessage.app"
end
