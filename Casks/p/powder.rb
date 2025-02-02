cask "powder" do
  arch arm: "aarch64", intel: "x86_64"

  version "99.2.382"
  sha256 arm:   "ca9edb176a5e3360706f07d6684531d3c36b0f46a268212986350cc4b5b0a4f9",
         intel: "f813a7cd3d4401b1d5f8bcbe5698940576ad5a8f3e0290e0393b83d49ecb76b8"

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
