cask "evo" do
  version "4.1.4"
  sha256 "894a6fdc75a05adc68911809dfb0d216d55d00ac511993a57beba44a6368b3dd"

  # d9w4fhj63j193.cloudfront.net/EVO/EVO%208/Drivers/ was verified as official when first introduced to the cask
  url "https://d9w4fhj63j193.cloudfront.net/EVO/EVO%208/Drivers/EVO%20v#{version}.dmg"
  name "Evo"
  desc "Audient Evo Control and Loop-back Mixer"
  homepage "https://evo.audio/products/evo-4/downloads/"

  app "EVO.app"
end
