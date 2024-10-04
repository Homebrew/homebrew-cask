cask "livebook" do
  version "0.14.4"
  sha256 "9735680b5da4f2cbb672ac0c72adab58c283956649e65cb3ce9c5fd3c3ab5057"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-v#{version}-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
