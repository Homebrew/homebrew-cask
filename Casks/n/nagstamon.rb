cask "nagstamon" do
  arch arm: "ARM", intel: "Intel"

  version "3.16.1"
  sha256  arm:   "3ca40fb770436d48d84a563b0dfea6f4fe0a25141e061be7621d996f81b8a454",
          intel: "a1dd478847562993d90a45096c976ab55fc07ba960a38ecec50f446a8aae639d"

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
