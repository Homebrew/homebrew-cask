cask "puush" do
  version "66"
  sha256 :no_check

  url "https://puush.me/dl/puush.zip"
  name "puush"
  desc "Share screenshots"
  homepage "https://puush.me/"

  livecheck do
    url "https://puush.me/dl/puush.xml?hax=jax"
    strategy :sparkle
  end

  app "puush.app"
end
