cask "abscissa" do
  version "4.0.5"
  sha256 "27ba34c800000871f3b4ce24feb92c85c9e11fa0a7799d4b1a76bb9a4fddfdc5"

  url "http://rbruehl.macbay.de/Abscissa/Downloads/Abscissa-#{version}.zip"
  appcast "http://rbruehl.macbay.de/Abscissa/Downloads/"
  name "Abscissa"
  homepage "http://rbruehl.macbay.de/Abscissa/"

  app "Abscissa.app"
end
