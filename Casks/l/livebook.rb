cask "livebook" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.8"
  sha256 arm:   "72b65a36dc25e003ca7278fde6624613a84b8577086cf1851934b6f1c3a694c6",
         intel: "795c1e4ea23d3df8da5324e85d888c9f1f232083be3f27687520da1ec7e7dd39"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/Livebook-darwin-#{arch}.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  auto_updates true
  conflicts_with cask: "livebook@nightly"
  depends_on macos: :big_sur

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
