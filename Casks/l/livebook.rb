cask "livebook" do
  version "0.16.4"
  sha256 "4093d0259cda2227f35dab5dab56f644ddc2e2028a90095b986b3cce77df9987"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
