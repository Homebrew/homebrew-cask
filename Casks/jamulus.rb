cask "jamulus" do
  version "3.6.1"
  sha256 "f22a883b739585b3bc2d71740489c898740b3f8bb9734f02d902096c3a2436db"

  # downloads.sourceforge.net/llcon/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/llcon/Jamulus-#{version}-installer-mac.dmg"
  appcast "https://sourceforge.net/projects/llcon/rss"
  name "Jamulus"
  homepage "https://jamulus.io/"

  depends_on macos: ">= :el_capitan"

  app "Jamulus.app"
  app "JamulusServer.app"
end
