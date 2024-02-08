cask "creality-print" do
  version "4.3.8.6984"
  sha256 "d2febf68dce011ffa317837e5e63d6729cdd254894ba34129a57118869b5cf91"

  url "https://file2-cdn.creality.com/file/8dcd085c64cc389dacd21cd851593d42/Creality_Print-v#{version}-macx-Release.dmg"
  name "Creality Print"
  desc "Slicer and cloud services for some Creality FDM 3D printers"
  homepage "https://www.creality.com/pages/download-software"

  livecheck do
    url :homepage
    regex(/Creality[._-]Print[._-]v?(\d+(?:\.\d+)+)[._-]macx[._-]Release\.dmg/i)
  end

  app "Creality Print.app"

  zap trash: [
    "~/Library/Application Support/Creality",
    "~/Library/Caches/Creality",
    "~/Library/Saved Application State/com.creality.crealityprint.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
