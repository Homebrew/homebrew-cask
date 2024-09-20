cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.27"
  sha256 arm:   "e2246c89521757aea08ca1171bd4171d4d862efbf25b0eaf7c1c488b5550088f",
         intel: "23f19545599eb8bcec4412299345161f21d4d67e01b63d59f87824a5250ec221"

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
