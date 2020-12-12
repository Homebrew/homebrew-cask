cask "jitsi" do
  version "2.10.5550"
  sha256 "d902af9dde7b1fde6f76af5f97e4f27d6b853bd9d3e83b2fec5292dda787a0da"

  # github.com/jitsi/jitsi/ was verified as official when first introduced to the cask
  url "https://github.com/jitsi/jitsi/releases/download/Jitsi-#{version.major_minor}/jitsi-#{version}.dmg"
  appcast "https://download.jitsi.org/jitsi/macosx/sparkle/updates.xml"
  name "Jitsi"
  homepage "https://jitsi.org/"

  app "Jitsi.app"
end
