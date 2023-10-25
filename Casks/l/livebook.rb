cask "livebook" do
  version "0.11.3"
  sha256 "5181b685cedb2a43a8992156fb3e6b2a0da7addb926c8d5e29ab93ed08f53a72"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-v#{version}-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
