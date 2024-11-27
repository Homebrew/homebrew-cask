cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  version "3.11.2"
  sha256 arm:   "1284969d513894f10c28a58c5855fb73a5c08fe3bce421e165dab0391a339f1c",
         intel: "8b940c4a070c26ac0d6fcae5c98dd19fc17547b33d65eccf2db0c11cc71a9c61"

  url "https://www.ovito.org/download/master/ovito-pro-#{version}-macos-#{arch}.dmg"
  name "OVITO Pro"
  desc "Scientific data visualization and analysis software"
  homepage "https://www.ovito.org/"

  livecheck do
    url :homepage
    regex(/href=.*?ovito[._-]pro[._-]v?(\d+(?:\.\d+)+)(?:[._-]macos)?[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "ovito"
  depends_on macos: ">= :mojave"

  app "Ovito.app"

  zap trash: [
    "~/Library/Preferences/org.ovito.Ovito.plist",
    "~/Library/Saved Application State/org.ovito.savedState",
  ]
end
