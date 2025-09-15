cask "livebook" do
  version "0.17.2"
  sha256 "ca54deb94aa6d75474fe6bc42906aa5f9c1062be6ccdaa4c94b3edfb6864ef63"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "livebook@nightly"
  depends_on macos: ">= :big_sur"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
