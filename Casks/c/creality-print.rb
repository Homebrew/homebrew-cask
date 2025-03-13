cask "creality-print" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.4.1795"
  sha256 arm:   "da6e81dc1b3f9b6e9f3b67dd0f6f576c687276a01c1e2796b6dafef6219560f8",
         intel: "54305c978a6039160264e0def7cee877ccaa0ba6c2f97fe03a61e2210851efcc"

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
