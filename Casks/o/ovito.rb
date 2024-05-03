cask "ovito" do
  arch arm: "arm64", intel: "intel"

  version "3.10.6"
  sha256 arm:   "ee0d1a5684aaf42ae141d1bdb10b6da2ba34edc34640f2ef8611eb2e3bccbd8f",
         intel: "18981c487f66a500532cc05e18ca1230c26e57a0912865d0082084fabeed126e"

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
