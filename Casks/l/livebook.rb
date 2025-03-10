cask "livebook" do
  version "0.15.3"
  sha256 "8cb87cb8562ea2892f5d0bf303d4f09fad971ebc605b651bc5494fcc07957d16"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
