cask "bisq" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.2"
  sha256 arm:   "16b9496a759700b036674c1eefc3a23d9f86412da78b0059a32f1671a97831bb",
         intel: "c59bf2aafc1ad2c4ba306b44087fcd53a83c9a023488c01d6ebbeef8d9cca92b"

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
