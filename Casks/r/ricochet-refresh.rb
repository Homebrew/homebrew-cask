cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.33"
  sha256 arm:   "06b68cce37cce318492ba4c39db65b6190cc7748f9ad68b28d2eee69bbd7cde4",
         intel: "7878c40463a94943c162a5c9f20a7bc7783eda0146d2983e036fc3c489fa0979"

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
