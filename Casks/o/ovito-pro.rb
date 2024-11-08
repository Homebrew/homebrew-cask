cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  version "3.11.1"
  sha256 arm:   "80bef544e08a7997b910f589266caf571da87fc0a05b21ec13b5826bdeff2da5",
         intel: "31640adc8c4bb8a4da6f484c4ed4d889e9fa26737bca41b7b3a0640d7fdd6187"

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
