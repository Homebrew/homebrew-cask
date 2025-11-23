cask "nagstamon" do
  arch arm: "ARM", intel: "Intel"

  version "3.16.2"
  sha256 arm:   "fabb4728569ad3501444037624be7f08659ccf70447f4456b30079a41f0c55fb",
         intel: "e2d6e672b56a4769bc1535d45523cea4eaad7641f6a639b0edebc14bcd7f19db"

  url "https://github.com/HenriWahl/Nagstamon/releases/download/v#{version}/Nagstamon.#{version}.#{arch}.dmg",
      verified: "github.com/HenriWahl/Nagstamon/"
  name "Nagstamon"
  desc "Nagios status monitor"
  homepage "https://nagstamon.de/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Nagstamon.app"

  zap trash: "~/.nagstamon"
end
