cask "ovito" do
  arch arm: "arm64", intel: "intel"

  version "3.11.1"
  sha256 arm:   "161a8c6c22097231ececbcba08313058cc35276e49ccc9b1cf776f8adb154403",
         intel: "56b67d9f606f897188532da513b3e032b909295fd47650d6e924651ed6cf1d7e"

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
