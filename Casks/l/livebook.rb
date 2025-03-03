cask "livebook" do
  version "0.15.2"
  sha256 "6c3d9b6840722a3a29cf492a9ede1892516390bb89a95d246b8d3710ef57eeb8"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
