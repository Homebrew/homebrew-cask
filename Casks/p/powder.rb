cask "powder" do
  arch arm: "aarch64", intel: "x86_64"

  version "99.5.394"
  sha256 arm:   "355ac24b9af8f55f8ecef2a0f2cefa89c04efd171dc501f113862d901f4c881a",
         intel: "00ecc496e488aa5cacd8d365b9202c6cb7441606224d2a0f1b20fed386b49696"

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

  depends_on macos: ">= :big_sur"

  app "The Powder Toy.app"

  zap trash: [
    "~/Library/Application Support/The Powder Toy",
    "~/Library/Saved Application State/uk.co.powdertoy.tpt.savedState",
  ]
end
