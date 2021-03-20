cask "pinegrow" do
  version "5.992"
  sha256 "b4d932df613af141926cebb44fa5c54e0fe1ed0be95caa09026c555a0433a234"

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
