cask "free42-binary" do
  version "3.0.1"
  sha256 :no_check

  url "https://thomasokken.com/free42/download/Free42Mac.zip"
  name "Free42 Binary"
  desc "HP-42S calculator simulator"
  homepage "https://thomasokken.com/free42/"

  app "Free42 Binary.app"

  caveats "Free42 Binary and Free42 Decimal can be installed together, but only one will show in the Launchpad."
end
