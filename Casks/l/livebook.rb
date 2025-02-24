cask "livebook" do
  version "0.15.1"
  sha256 "67dca3d0e9931301c7fa22b0da3c177670c2764bc0d8e0ea7198c3fb7a22e3a4"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
