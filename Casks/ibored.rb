cask "ibored" do
  version "1.2.1"
  sha256 "f20c11204eed840c62ab2256004baba813e3514d5e237a71dd696595e11303e3"

  url "https://files.tempel.org/iBored/iBored-Mac_#{version}.zip"
  appcast "https://apps.tempel.org/iBored/releasenotes.html"
  name "iBored"
  homepage "https://apps.tempel.org/iBored/"

  app "iBored.app"
end
