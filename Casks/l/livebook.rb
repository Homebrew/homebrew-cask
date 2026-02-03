cask "livebook" do
  version "0.18.4"
  sha256 "1fd558d9b1fc3ed40ce72e8409f919d118c083b89c7b6c824a9cc344d7d6cccb"

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
