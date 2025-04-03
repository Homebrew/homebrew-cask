cask "livebook" do
  version "0.15.5"
  sha256 "09a667870086d5d394e4c44b9edb0cf050183441c3960090068ffc91342b4101"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
