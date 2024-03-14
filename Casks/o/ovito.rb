cask "ovito" do
  arch arm: "arm64", intel: "intel"

  version "3.10.4"
  sha256 arm:   "da6fe1ef3612660ee5c6b2b9b60e662ed2012f262dfb038786e4b7824f4123d0",
         intel: "c15eb8925ccbd1aa180865a0dc8bb1f474e9466242b65063346cc223d639531e"

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
