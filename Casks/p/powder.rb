cask "powder" do
  arch arm: "aarch64", intel: "x86_64"

  version "100.0.399"
  sha256 arm:   "44820c7c066a8ca059f95834b2f63a81a9f5ee51532a8f725e4a718f51b2720c",
         intel: "ce526877f2283fc3d204dffeb61f70d08377309ba6989d6049469333bf637f18"

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

  depends_on macos: :big_sur

  app "The Powder Toy.app"

  zap trash: [
    "~/Library/Application Support/The Powder Toy",
    "~/Library/Saved Application State/uk.co.powdertoy.tpt.savedState",
  ]
end
