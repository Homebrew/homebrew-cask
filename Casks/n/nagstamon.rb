cask "nagstamon" do
  arch arm: "ARM", intel: "Intel"

  version "3.18.0"
  sha256 arm:   "be85472fe0e6aca1c43bf9838fef7631ef6a62f9fcba02b24ac44d58721051a9",
         intel: "b54385c00148e12a12cfa6eea17d79e9543ad53f1fe63f7c8c8240ab627a32c1"

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
