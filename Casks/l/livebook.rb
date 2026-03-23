cask "livebook" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.5"
  sha256 arm:   "c73a74e9df0d655b19588e666964eca8326b1f3c57d2f6af5b05d58bc5e75b83",
         intel: "d4ecaeea60dce93c0d6669cb7323e4c33435e4747a3491c25ca768ad82a2a1b0"

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
