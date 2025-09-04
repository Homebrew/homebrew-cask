cask "livebook" do
  version "0.17.1"
  sha256 "283b79d01c51c9f1e9363b3e70821b2dea95767da1d3891f79b38f0fd402d005"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
