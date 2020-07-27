cask "macspice" do
  version "3.1.24"
  sha256 "486baee366773f3589c870d9294e1028c118e29f9bf4dc824322e37f2782475f"

  url "https://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast "https://www.macspice.com/AppCast-v2.xml"
  name "MacSpice"
  homepage "https://www.macspice.com/"

  app "MacSpice.app"
end
