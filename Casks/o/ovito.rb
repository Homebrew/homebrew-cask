cask "ovito" do
  arch arm: "arm64", intel: "intel"

  version "3.10.1"
  sha256 arm:   "fed42dc1c176071a4d50af3806ff13bd8890607b260deb546bfd71561c7bc17b",
         intel: "45b196cb615d05f67f66cf496147f715f0524a6ec79531e0284db2e0fe2ee263"

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
