cask "abscissa" do
  version "4.0.4"
  sha256 "c859be0ae8a1f3219fae71eea13bcb1822f7febb1d63e88ed2d402ebce54339b"

  url "http://rbruehl.macbay.de/Abscissa/Downloads/Abscissa-#{version}.zip"
  appcast "http://rbruehl.macbay.de/Abscissa/Downloads/"
  name "Abscissa"
  homepage "http://rbruehl.macbay.de/Abscissa/"

  app "Abscissa.app"
end
