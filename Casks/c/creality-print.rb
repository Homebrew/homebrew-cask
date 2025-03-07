cask "creality-print" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.4.1793"
  sha256 arm:   "919e028270e3e41b01e9b26164d0941256f0f12023315e33fcbc39aae74f2ede",
         intel: "747e7a0e9fbbd16736a3b5c68fba3ae4d1f5f566ce137529df948ea84c012957"

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
