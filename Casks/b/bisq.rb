cask "bisq" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.4"
  sha256 arm:   "45b20ea078c907e2f44ff5dfe42111fb0276e7c7f74fcb6af2932ccac8a3b38e",
         intel: "e1e16feb54e99fb2b9e9cf436973acf13629a9ac95b69df65c47328287ea5c8d"

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
