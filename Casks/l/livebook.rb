cask "livebook" do
  version "0.13.2"
  sha256 "b0e7eee4f9bd5bd6f5ad599b271c1b083580a7a58b2e78753cd62075473d0d96"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-v#{version}-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
