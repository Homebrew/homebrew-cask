cask "nagstamon" do
  version "3.8.0"
  sha256 "99912e45dd8940dd508f31e775a4f1a2729d65fb7d4e072448b2f9e02daaaaf5"

  url "https://github.com/HenriWahl/Nagstamon/releases/download/v#{version}/Nagstamon.#{version}.dmg",
      verified: "github.com/HenriWahl/Nagstamon/"
  name "Nagstamon"
  desc "Nagios status monitor"
  homepage "https://nagstamon.de/"

  app "Nagstamon.app"

  zap trash: "~/.nagstamon"
end
