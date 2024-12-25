cask "powder" do
  arch arm: "aarch64", intel: "x86_64"

  version "99.0.377"
  sha256 arm:   "778efa97a6bcc44a4903e5e6b0a5326a6ffeab2bf2f477ee04cccf9130fee358",
         intel: "8379db8ea3b7c35de56437af2d8f9b6a46bdabb975dce901282570f8fa277b06"

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
