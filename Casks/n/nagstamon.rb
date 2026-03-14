cask "nagstamon" do
  arch arm: "ARM", intel: "Intel"

  version "3.18.2"
  sha256 arm:   "c15cc9002635cc26e6ee496ab6b89ff3f453b9b9697f40a4b9bfa042a07772c7",
         intel: "1ff751ed5b8801527f916a979a92e36228d4022499736ac6d5874a1d791c949b"

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
