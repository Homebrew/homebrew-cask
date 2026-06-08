cask "bisq" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.1"
  sha256 arm:   "ddd8f4709db5e8a15f5731eaa4c84aeef32c2e9d1aae30c2525f1cd76547e1ab",
         intel: "02a8b794a4e39819c79a030ac3bc0976823fd94cd6950ada4655e930dc0dd485"

  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{arch}-#{version}.dmg",
      verified: "github.com/bisq-network/bisq/"
  name "Bisq"
  desc "Decentralised bitcoin exchange network"
  homepage "https://bisq.network/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Bisq.app"

  zap trash: [
    "~/Library/Application Support/Bisq",
    "~/Library/Saved Application State/io.bisq.CAT.savedState",
  ]
end
