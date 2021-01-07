cask "puush" do
  version "66"
  sha256 :no_check

  url "https://puush.me/dl/puush.zip"
  appcast "https://puush.me/dl/puush.xml?hax=jax"
  name "puush"
  homepage "https://puush.me/"

  app "puush.app"
end
