cask "bisq" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.6"
  sha256 arm:   "0c322e9aed88b6e45400156a73523512c20a6c532e5200d70fdef08399b6b1b8",
         intel: "f81d8653f7e386b526e3571b0f3f9b5eb94221c643f0b572241d51e3a3742f35"

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
