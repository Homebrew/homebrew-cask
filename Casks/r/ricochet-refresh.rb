cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.29"
  sha256 arm:   "59d811eb38605a4d0267e5a5ea420dc770a0618488495f44032a56c8fadf6d12",
         intel: "8a8f0ae09af2cf84e25d0bd0c87b3dc5b00469e3d470e60ec55612df58c1c267"

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
