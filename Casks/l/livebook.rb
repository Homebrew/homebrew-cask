cask "livebook" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.4"
  sha256 arm:   "bb0a2c6ca0735e53a39756fb391e620d10f3fed8c3d8830153c78ff1c9ccc6b3",
         intel: "787ed91596dbcfa42c779dd8f50762880bc7afc49661872a80aca66b5c488346"

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
