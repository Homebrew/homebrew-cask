cask "bisq" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.3"
  sha256 arm:   "12168e3ab15b3084eaefa4bef249c3abc23cb32c950833a2ec3f2a7456c4d988",
         intel: "34119231d30d8962d8c16a3a974bf510f7788c0d71146b2ee322eac48026c74a"

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
