cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.28"
  sha256 arm:   "d6fd6f19ee7987672532d9884541d6c01ef0229f7d2c9917a85f1861db5c00a6",
         intel: "bc1edaaa556c97d1fac63863df5cca2b3bc5971dd121d4678f303cad109424ed"

  url "https://github.com/blueprint-freespeech/ricochet-refresh/releases/download/v#{version}-release/ricochet-refresh-#{version}-macos-#{arch}.dmg",
      verified: "github.com/blueprint-freespeech/ricochet-refresh/"
  name "Ricochet Refresh"
  desc "Private and anonymous instant messaging over tor"
  homepage "https://www.ricochetrefresh.net/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[a-z]?)(?:[._-]release)?$/i)
    strategy :github_latest
  end

  app "Ricochet Refresh.app"

  zap trash: "~/Library/Application Support/Ricochet-Refresh"
end
