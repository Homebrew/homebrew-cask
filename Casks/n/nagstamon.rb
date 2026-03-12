cask "nagstamon" do
  arch arm: "ARM", intel: "Intel"

  version "3.18.1"
  sha256 arm:   "b6f014811dfab97924755a5a91a7a9f64f8f068e675cfc9b56c72791f61e16f3",
         intel: "043734b8748e5b3cfd17d78b3257f8282f77e85a76493778b96461b9848b5ad6"

  url "https://github.com/HenriWahl/Nagstamon/releases/download/v#{version}/Nagstamon-#{version}-#{arch}.dmg",
      verified: "github.com/HenriWahl/Nagstamon/"
  name "Nagstamon"
  desc "Nagios status monitor"
  homepage "https://nagstamon.de/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Nagstamon.app"

  zap trash: "~/.nagstamon"
end
