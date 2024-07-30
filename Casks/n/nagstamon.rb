cask "nagstamon" do
  version "3.14.0"
  sha256 "87901c7a27b1ba137e2d0c75958efd97bdbfff0f21e09c08a5e2b61683531f60"

  url "https://github.com/HenriWahl/Nagstamon/releases/download/v#{version}/Nagstamon.#{version}.dmg",
      verified: "github.com/HenriWahl/Nagstamon/"
  name "Nagstamon"
  desc "Nagios status monitor"
  homepage "https://nagstamon.de/"

  app "Nagstamon.app"

  zap trash: "~/.nagstamon"

  caveats do
    requires_rosetta
  end
end
