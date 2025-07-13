cask "creality-print" do
  arch arm: "arm64", intel: "x86_64"

  version "6.2.0.2827"
  sha256 arm:   "8b7386bf63756e50979319bbf7701c61261f788f9aeb5a6d0900ecd3687d2aa8",
         intel: "4c53ce7292a4704792621afcda1449f7638bc1ce66901ba98b27d41872bd22d8"

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
