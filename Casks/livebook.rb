cask "livebook" do
  version "0.8.1"
  sha256 "00181027216346b3e4f7ef89668de719dcf1c3a55cabf8ca1b6a0e0987298f5b"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-v#{version}-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook"
  name "Livebook"
  desc "Code notebooks for Elixir Developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
