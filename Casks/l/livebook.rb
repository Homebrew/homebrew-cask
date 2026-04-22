cask "livebook" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.7"
  sha256 arm:   "c6e4a3794aeabd2610252e5e5ac782fea62199b42f1af2da942f3f7ba721b120",
         intel: "050c96b1ea4f2ca5e7113c210b0d840720368178165b969123cf1e8b49d18ed2"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/Livebook-darwin-#{arch}.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  auto_updates true
  conflicts_with cask: "livebook@nightly"
  depends_on macos: ">= :big_sur"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
