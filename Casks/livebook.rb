cask "livebook" do
  version "0.7.1"
  sha256 "5e55a1d99d9f7f830da811525ba275a29aadfea3b908d771606829153b1e48f8"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-v#{version}-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook"
  name "Livebook"
  desc "Code notebooks for Elixir Developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
