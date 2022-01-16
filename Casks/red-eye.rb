cask "red-eye" do
  version "1.1.0,15"
  sha256 :no_check

  url "https://www.hexedbits.com/downloads/redeye.zip"
  appcast "https://www.hexedbits.com/redeye/",
          must_contain: version.csv.first.chomp(".0")
  name "Red Eye"
  homepage "https://www.hexedbits.com/redeye/"

  depends_on macos: ">= :mojave"

  app "Red Eye.app"
end
