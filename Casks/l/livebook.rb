cask "livebook" do
  version "0.17.3"
  sha256 "f624cb28765cb061c811179d4fc974c0995771a15d30508cab117bfdce13fe32"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  conflicts_with cask: "livebook@nightly"
  depends_on macos: ">= :big_sur"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
