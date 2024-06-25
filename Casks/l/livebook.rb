cask "livebook" do
  version "0.13.0"
  sha256 "e311ed78271aab975f0780e0e681ad38f1e52ec6a82d00475d0aac2ee9f77bd2"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-v#{version}-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
