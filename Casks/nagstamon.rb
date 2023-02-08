cask "nagstamon" do
  version "3.10.1"
  sha256 "ea8b51977a1bf257ad2533963e34c78403e62fbde3c29cab490b7f7898c2bec2"

  url "https://github.com/HenriWahl/Nagstamon/releases/download/v#{version}/Nagstamon.#{version}.dmg",
      verified: "github.com/HenriWahl/Nagstamon/"
  name "Nagstamon"
  desc "Nagios status monitor"
  homepage "https://nagstamon.de/"

  app "Nagstamon.app"

  zap trash: "~/.nagstamon"
end
