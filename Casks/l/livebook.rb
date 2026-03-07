cask "livebook" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.2"
  sha256 arm:   "611485bbd35961154a19239699f1ccace7fdf730158c8a738c59ca536a50963f",
         intel: "e8f2e5be30d42278fcf2e9caa18d8e10f02d4fe1ce9b01e0a2467bd110928681"

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
