cask "phd2" do
  version "2.6.9"
  sha256 "6c891a7251df226c9090012dc537e36e7fe03119079935fa4daca7d197ee197a"

  url "https://openphdguiding.org/PHD2-#{version}-OSX-64.zip"
  appcast "https://openphdguiding.org/changelog/"
  name "PHD2"
  desc "Telescope guiding software"
  homepage "https://openphdguiding.org/"

  app "PHD2.app"
end
