cask "red-eye" do
  version "1.1"
  sha256 :no_check

  url "https://www.hexedbits.com/downloads/redeye.zip"
  appcast "https://www.hexedbits.com/redeye/"
  name "Red Eye"
  homepage "https://www.hexedbits.com/redeye/"

  depends_on macos: ">= :mojave"

  app "Red Eye.app"
end
