cask "angry-ip-scanner" do
  arch arm: "Arm64", intel: "X86"

  version "3.9.3"
  sha256 arm:   "e8997d2ff12f7322ecb3dd0b4c4a410187aa8a26ad89772c833af6de781dfd29",
         intel: "554c5a14ee32c1ef1812f5382209afee75548c350ed767cf924bc5e0532f403b"

  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac#{arch}-#{version}.zip",
      verified: "github.com/angryip/ipscan/"
  name "Angry IP Scanner"
  desc "Network scanner"
  homepage "https://angryip.org/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Angry IP Scanner.app"

  # No zap stanza required
end
