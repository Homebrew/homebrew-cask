cask "livebook" do
  version "0.9.3"
  sha256 "849e3b46b5d1b933baa2f4d9962158319e39e7eef3a0cd0938fb3aeaa585bb57"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-v#{version}-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
