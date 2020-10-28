cask "jamulus" do
  version "3.6.0"
  sha256 "d1dd6122df9a89a919ce68f36062be381ac0d4611e8c38123d894e61f0ec6510"

  # downloads.sourceforge.net/llcon/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/llcon/Jamulus-#{version}-installer-mac.dmg"
  appcast "https://sourceforge.net/projects/llcon/rss"
  name "Jamulus"
  homepage "https://llcon.sourceforge.io/"

  auto_updates true

  app "Jamulus.app"
  app "JamulusServer.app"
end
