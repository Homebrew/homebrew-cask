cask "powder" do
  arch arm: "aarch64", intel: "x86_64"

  version "99.4.393"
  sha256 arm:   "27a802a1211ab6fc26aa7740befe3f0bb42651259b65d789599dc2f68b5853b7",
         intel: "d1668f9b2fe515b0810ee468cbfe7b1a37cdc5605fbbae87a182bc9ad84ceb5a"

  url "https://github.com/The-Powder-Toy/The-Powder-Toy/releases/download/v#{version}/powder-v#{version}-#{arch}-darwin-macos.dmg",
      verified: "github.com/The-Powder-Toy/The-Powder-Toy/"
  name "Powder Toy"
  desc "Physics sandbox game"
  homepage "https://powdertoy.co.uk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "The Powder Toy.app"

  zap trash: [
    "~/Library/Application Support/The Powder Toy",
    "~/Library/Saved Application State/uk.co.powdertoy.tpt.savedState",
  ]
end
