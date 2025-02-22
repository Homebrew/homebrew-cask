cask "powder" do
  arch arm: "aarch64", intel: "x86_64"

  version "99.3.384"
  sha256 arm:   "c20e68c27e3b595f9c0f410359f606a5b9c6858f9b752d5a9f953e78934ab561",
         intel: "1e32a99bef0e36aabe740c101efd0665dcc99f196c53b8e86ac852e3b0b7fa40"

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
