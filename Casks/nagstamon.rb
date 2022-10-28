cask "nagstamon" do
  version "3.10.0"
  sha256 "c70ba59f57d03467fa52b54fa4da885ef05b16c660f72a8c1dc24de6b49cf71e"

  url "https://github.com/HenriWahl/Nagstamon/releases/download/v#{version}/Nagstamon.#{version}.dmg",
      verified: "github.com/HenriWahl/Nagstamon/"
  name "Nagstamon"
  desc "Nagios status monitor"
  homepage "https://nagstamon.de/"

  app "Nagstamon.app"

  zap trash: "~/.nagstamon"
end
