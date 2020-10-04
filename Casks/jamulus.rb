cask "jamulus" do
  version "3.5.12"
  sha256 "833e022e4fe829a4ec844078ce31236876ce4b1694d13d99a201d55476077949"

  # downloads.sourceforge.net/llcon/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/llcon/Jamulus-#{version}-installer-mac.dmg"
  appcast "https://sourceforge.net/projects/llcon/rss"
  name "Jamulus"
  homepage "https://llcon.sourceforge.io/"

  auto_updates true

  app "Jamulus.app"
  app "JamulusServer.app"
end
