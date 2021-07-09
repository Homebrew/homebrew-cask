cask "nagstamon" do
  version "3.6.0"
  sha256 "5b2819664604b68c3659bd57f5127bab8f117324329c9ee6e7a75f87184f90a3"

  url "https://github.com/HenriWahl/Nagstamon/releases/download/v#{version}/Nagstamon.#{version}.dmg",
      verified: "github.com/HenriWahl/Nagstamon/"
  name "Nagstamon"
  desc "Nagios status monitor"
  homepage "https://nagstamon.de/"

  app "Nagstamon.app"

  zap trash: "~/.nagstamon"
end
