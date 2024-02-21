cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  version "3.10.3"
  sha256 arm:   "dcef0183ebe4f449362c8f8a2951571d474cb5268ac708f7650c77d5b8df2e80",
         intel: "dcde146cae677506611d4dd3ea162e648980bac579e70ab19c7a14e41a6c0d81"

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
