cask "nagstamon" do
  version "3.12.0"
  sha256 "356c701df107797ad038437406295a93d0d34ae59f8439071d182516b762c4d4"

  url "https://github.com/HenriWahl/Nagstamon/releases/download/v#{version}/Nagstamon.#{version}.dmg",
      verified: "github.com/HenriWahl/Nagstamon/"
  name "Nagstamon"
  desc "Nagios status monitor"
  homepage "https://nagstamon.de/"

  app "Nagstamon.app"

  zap trash: "~/.nagstamon"
end
