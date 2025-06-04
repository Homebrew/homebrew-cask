cask "livebook" do
  version "0.16.2"
  sha256 "195b40377cb6857eabc6cba0a6d76000adbeec94fbc10aac9ba011801ed1154b"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
