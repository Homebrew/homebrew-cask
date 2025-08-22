cask "angry-ip-scanner" do
  arch arm: "Arm64", intel: "X86"

  version "3.9.2"
  sha256 arm:   "732ce7b539dea17dd1e7561ee74c51b514afdf4d449f7f766526e45a01ae454a",
         intel: "6149c40b26184ccaf19f11fbea3d4712bc2764301c601b3252dc88045ca2d6eb"

  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac#{arch}-#{version}.zip",
      verified: "github.com/angryip/ipscan/"
  name "Angry IP Scanner"
  desc "Network scanner"
  homepage "https://angryip.org/"

  disable! date: "2026-09-01", because: :unsigned

  depends_on macos: ">= :big_sur"

  app "Angry IP Scanner.app"

  # No zap stanza required
end
