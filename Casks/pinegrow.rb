cask "pinegrow" do
  version "6"
  sha256 "e432483af91feab9be769229c0487a9acd7fd122590c5687e6adcadb7e9fc7bf"

  url "https://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name "Pinegrow"
  desc "Web editor"
  homepage "https://pinegrow.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/PinegrowMac[._-]v?(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Pinegrow.app"
end
