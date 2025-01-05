cask "ovito" do
  arch arm: "arm64", intel: "intel"

  version "3.11.3"
  sha256 arm:   "961fd6ddc981e2acba1f7e14a91278f44b5333be256289e5e92cae1bfa9a48b4",
         intel: "0484689d551eeb063372cfc18b9aaa0a80ec3e2d7a94ace328368472d26add0d"

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
  depends_on macos: ">= :catalina"

  app "Ovito.app"

  zap trash: [
    "~/Library/Preferences/org.ovito.Ovito.plist",
    "~/Library/Saved Application State/org.ovito.savedState",
  ]
end
