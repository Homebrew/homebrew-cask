cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  version "3.10.2"
  sha256 arm:   "8ccd475990722f7dba68ec002605fd0353e8438fb6a46d5478c89be413b52a62",
         intel: "56f8538d6613d0cffc8f953b33e1ed320ac3c3426d7eaf3370e7b0bb51126815"

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
