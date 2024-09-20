cask "livebook" do
  version "0.14.2"
  sha256 "d68903545e116ab32cacb0fb947057429d3cc4b1f1d5ca9342ef9875b819b821"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-v#{version}-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
