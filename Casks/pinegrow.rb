cask "pinegrow" do
  version "6.1.1"
  sha256 "1c088e090de903185c066ad5383973111d9a97bce8b24331a27fad7098fe8eff"

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
