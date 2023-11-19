cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  version "3.9.4"
  sha256 arm:   "43014be524a9fa538ee2679e5e65d4a81dfefbbfb919368d527cdc5c03a83caa",
         intel: "d63e0bd9e4e7b192c03481b5671cacde90f4024d63bfac61e057e36457a74a6e"

  url "https://www.ovito.org/download/master/ovito-pro-#{version}-macos-#{arch}.dmg"
  name "OVITO Pro"
  desc "Scientific data visualization and analysis software"
  homepage "https://www.ovito.org/"

  livecheck do
    url "https://www.ovito.org/os-downloads/"
    regex(/version\sv?(\d+(?:\.\d+)+)/i)
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
