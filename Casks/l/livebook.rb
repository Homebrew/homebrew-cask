cask "livebook" do
  version "0.15.0"
  sha256 "5dce6ac5358e9de44ebcaa615289f506bb27c7e9d9244c03e5bca176dc16e5a9"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
