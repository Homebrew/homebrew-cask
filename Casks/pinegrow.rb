cask "pinegrow" do
  version "5.991"
  sha256 "6697851b9be272bddf2638c637be9fb3dae26d793e78e164586ef72ade66fb07"

  url "https://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name "Pinegrow"
  homepage "https://pinegrow.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/PinegrowMac\.(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Pinegrow.app"
end
