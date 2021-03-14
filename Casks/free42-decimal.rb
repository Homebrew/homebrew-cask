cask "free42-decimal" do
  version "3.0.1"
  sha256 :no_check

  url "https://thomasokken.com/free42/download/Free42Mac.zip"
  name "Free42 Decimal"
  desc "HP-42S calculator simulator"
  homepage "https://thomasokken.com/free42/"

  app "Free42 Decimal.app"

  caveats "Free42 Decimal and Free42 Binary can be installed together, but only one will show in the Launchpad."
end
