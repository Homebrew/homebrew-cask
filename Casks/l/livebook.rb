cask "livebook" do
  version "0.16.3"
  sha256 "8beb87b4350bd5225c48241333ed046a1c25d4e6fc4adb565c3d5f3716c1d6d9"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
