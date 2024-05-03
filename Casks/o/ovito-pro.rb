cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  version "3.10.6"
  sha256 arm:   "caf2539110bb2c25f8b6def99cce54c2f03bb146008c6ede7e769e3aecb1e5c8",
         intel: "809fe82b88f70f8865989284bc2f8b06485bfd1cc061cafb8120458b6c34f952"

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
