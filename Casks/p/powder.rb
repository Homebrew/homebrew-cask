cask "powder" do
  arch arm: "aarch64", intel: "x86_64"

  version "99.1.380"
  sha256 arm:   "b43a17d78f1b2b98966330c77b7f12e02db00eeec0b78c18019ddfeaeac11d62",
         intel: "be4e99c40d5c5fa86d3054c3e120ebef45fc33d14d10f6eb47757754a68e3168"

  url "https://github.com/The-Powder-Toy/The-Powder-Toy/releases/download/v#{version}/powder-v#{version}-#{arch}-darwin-macos.dmg",
      verified: "github.com/The-Powder-Toy/The-Powder-Toy/"
  name "Powder Toy"
  desc "Physics sandbox game"
  homepage "https://powdertoy.co.uk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "The Powder Toy.app"

  zap trash: [
    "~/Library/Application Support/The Powder Toy",
    "~/Library/Saved Application State/uk.co.powdertoy.tpt.savedState",
  ]
end
