cask "ovito" do
  arch arm: "arm64", intel: "intel"

  version "3.10.0"
  sha256 arm:   "513c1e464671fa23691674eb9217a23312001f6105618d6dafdcde1ce0833b92",
         intel: "7a89d0c4e998f841c07420a896f61b10ab236f7ae2a66e8ab95938f84d6508ba"

  url "https://www.ovito.org/download/master/ovito-basic-#{version}-macos-#{arch}.dmg"
  name "OVITO"
  desc "Scientific data visualization and analysis software"
  homepage "https://www.ovito.org/"

  livecheck do
    url "https://www.ovito.org/os-downloads/"
    regex(/version\sv?(\d+(?:\.\d+)+)/i)
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
