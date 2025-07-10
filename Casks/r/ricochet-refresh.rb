cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.35"
  sha256 arm:   "0d7aff62aeb579f7ae9efc6482224deeecb06e27ac4df55098088111d51fa5b8",
         intel: "bf209a2102a99ecf2876836011a4349d9fae32742b88aa1f42cdf3f582538c2f"

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
