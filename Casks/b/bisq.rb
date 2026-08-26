cask "bisq" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.7"
  sha256 arm:   "71b3d46e56982908e8b64daeb9f8ca62059d6344cc3cecb8f4cfe9b5a0da5873",
         intel: "e4673a579b4912962e269b20c3de54e80de71865f28a2458460823fa30afd0a3"

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
