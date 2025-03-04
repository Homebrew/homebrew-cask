cask "spacetimedb" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "1e93e8a25eea5705f4d6287a1e10bf826ff6e44f09c6d720bc1bba4525392421",
         intel: "d1e6ec3706719883724cf6b63548825ad30995e161c804d8151a0b5705fbfbcb"

  url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v#{version}/spacetime-#{arch}-apple-darwin.tar.gz",
      verified: "github.com/clockworklabs/SpacetimeDB/"
  name "spacetimedb"
  desc "All-in-one backend server and database"
  homepage "https://spacetimedb.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  # In documentation the developers refer to CLI tool as `spacetime`
  # Example: https://spacetimedb.com/docs/getting-started
  binary "spacetimedb-cli", target: "spacetime"
  binary "spacetimedb-standalone"

  # No zap stanza required
end
