cask "livebook" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.6"
  sha256 arm:   "c1a8d356f2762c7fd297cc0d270869e88d2c1d0bc31f380edc140e46cf1fb89a",
         intel: "bb77e7c7cf44f7e027340c0105c1fa26f60a37fd4450ec1a5bcb6cb3f5641825"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/Livebook-darwin-#{arch}.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  conflicts_with cask: "livebook@nightly"
  depends_on macos: ">= :big_sur"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
