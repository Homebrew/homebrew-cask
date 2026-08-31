cask "powder" do
  arch arm: "aarch64", intel: "x86_64"

  version "100.1.400"
  sha256 arm:   "baad1d8e94f74752e1a458d4fe6b9b2de8682607556d046f92695714cef7f3d1",
         intel: "81236e7be76dbf5af8e63203f538deb5605dead0064b894f56f1225ddd4be8e6"

  url "https://github.com/The-Powder-Toy/The-Powder-Toy/releases/download/v#{version}/powder-v#{version}-#{arch}-darwin-macos.dmg"
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
