cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  version "3.10.5"
  sha256 arm:   "4f6d9e0c4f946ab4dc41e1d9c108b312155f811caf65458b05136c01016df657",
         intel: "86596589f7c342ba2b5e05bdb33b812ccf8de5991b748ed8f9ac74b680cba979"

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
