cask "ovito" do
  arch arm: "arm64", intel: "intel"

  version "3.10.2"
  sha256 arm:   "a048f8e1f6f0c6dd5a2d637a699fa070e391e6bc81df24f70a655a75a8cb4620",
         intel: "181049d5687a6d4fb195e693973ae425b47663d40aa6bd150cb2e698104ec315"

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
