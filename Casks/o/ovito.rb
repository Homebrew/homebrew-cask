cask "ovito" do
  arch arm: "arm64", intel: "intel"

  version "3.10.5"
  sha256 arm:   "6d0153f253c5fc4bb3530d09e29376e234a17418201ba08ab14f3de0b2e025e1",
         intel: "395e0d4268d8908cc3c18dca6fc97dc236841310adc3f8f864f4394b85c8af41"

  url "https://www.ovito.org/download/master/ovito-basic-#{version}-macos-#{arch}.dmg"
  name "OVITO"
  desc "Scientific data visualization and analysis software"
  homepage "https://www.ovito.org/"

  livecheck do
    url :homepage
    regex(/href=.*?ovito[._-]basic[._-]v?(\d+(?:\.\d+)+)(?:[._-]macos)?[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "ovito-pro"
  depends_on macos: ">= :mojave"

  app "Ovito.app"

  zap trash: [
    "~/Library/Preferences/org.ovito.Ovito.plist",
    "~/Library/Saved Application State/org.ovito.savedState",
  ]
end
