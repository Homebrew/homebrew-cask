cask "creality-print" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.5.1840"
  sha256 arm:   "32ebdf7e9c79abfd1a7cfebbbb8f339e74bb2882e2b7d299af7a25e050531ca5",
         intel: "aee772b51d00e0a0ee4029e326b7b4c287291f34be8badad5e2fc184bbba301f"

  url "https://github.com/CrealityOfficial/CrealityPrint/releases/download/v#{version.major_minor_patch}/CrealityPrint-#{version}-macx-#{arch}-Release.dmg",
      verified: "github.com/CrealityOfficial/CrealityPrint/"
  name "Creality Print"
  desc "Slicer and cloud services for some Creality FDM 3D printers"
  homepage "https://www.creality.com/pages/download-software"

  livecheck do
    url :homepage
    regex(/href=.*?Creality[._-]?Print[._-]v?(\d+(?:\.\d+)+)[._-]macx[._-]#{arch}[._-]Release\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Creality Print.app"

  zap trash: [
    "~/Library/Application Support/Creality",
    "~/Library/Caches/Creality",
    "~/Library/Saved Application State/com.creality.crealityprint.savedState",
  ]
end
