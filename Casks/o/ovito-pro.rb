cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  version "3.11.3"
  sha256 arm:   "600ecdde3da5005e555ba8415c0b032c164fabecb186240db13e06d71edcf0a7",
         intel: "8c5d6130e29650fcfdb6c838616b266b389d86b47bb2a1d3a8507914081f0309"

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
  depends_on macos: ">= :catalina"

  app "Ovito.app"

  zap trash: [
    "~/Library/Preferences/org.ovito.Ovito.plist",
    "~/Library/Saved Application State/org.ovito.savedState",
  ]
end
