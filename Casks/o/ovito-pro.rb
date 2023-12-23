cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  version "3.10.0"
  sha256 arm:   "35f2ce8b50fddae1b68faf309d32f65fef02e3ff19fd35d6dfeef886d7a5b09f",
         intel: "43357e198b5a24a935ddba5903a7ef2d8cc316d9e6465d6b5d320257c04f11da"

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
