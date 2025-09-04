cask "livebook" do
  version "0.17.0"
  sha256 "4496ecb2e74039ad4a82c9e498671b4c2efa019047f72c596686bf217a5d00b3"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
