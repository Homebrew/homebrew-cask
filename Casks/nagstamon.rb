cask "nagstamon" do
  version "3.4.1"
  sha256 "3493578ca06b61a146d3f1af1f7858e2aee662c4fa3ef5dedfc45c0203896ac5"

  url "https://github.com/HenriWahl/Nagstamon/releases/download/#{version}/Nagstamon.#{version}.dmg"
  appcast "https://github.com/HenriWahl/Nagstamon/releases/download/#{version}/sha256sums.txt"
  name "Nagstamon"
  homepage "https://nagstamon.de/"

  app "Nagstamon.app"

  zap trash: "~/.nagstamon"
end
