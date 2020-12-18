cask "puush" do
  version "r66"
  sha256 :no_check

  url "https://puush.me/dl/puush.zip"
  appcast "https://puush.me/dl/puush.xml?hax=jax",
          must_contain: version.sub("r", " ")
  name "puush"
  homepage "https://puush.me/"

  app "puush.app"
end
