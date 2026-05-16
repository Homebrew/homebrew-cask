cask "bisq" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.0"
  sha256 arm:   "5b5d234cc635ebca839bee38210951a0fcf41f684f7b36500ecbdda60f92a17c",
         intel: "658a8adbf943917e56782fd571de08310a5f59b2629537a8beaf7f726b48b683"

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
