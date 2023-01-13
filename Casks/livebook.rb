cask "livebook" do
  version "0.8.0"
  sha256 "ad873cef7212f0ede82c19a10a0c6daae7361a403b3d0f5c2b2b2b40e13d126b"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-v#{version}-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook"
  name "Livebook"
  desc "Code notebooks for Elixir Developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
