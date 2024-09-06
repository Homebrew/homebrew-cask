cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.26"
  sha256 arm:   "4ac4eecfc0b8e2f649480f0a9ee0692d598aa7d1b65706456ea5f252cf8fc3d3",
         intel: "0eb8348f548cbe7d478b11adc9b711007bff1852d3583e12f0a5060014acfef9"

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
