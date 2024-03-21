cask "ti-smartview-ce-for-the-ti-84-plus-family" do
  version "6.0.1.344"
  sha256 "c9f86050e40d0c50b3e067e11032770025de672c767356d7bdbd090fd5610164"

  url "https://d13g8g4x8s9rc1.cloudfront.net/downloads/files/cdn/smartview/84ce/#{version.major_minor_patch}/TI-SmartView-CE-84-#{version}.dmg",
      verified: "d13g8g4x8s9rc1.cloudfront.net/downloads/files/cdn/smartview/84ce/"
  name "TI SmartView CE Emulator Software for the TI-84 Plus Family"
  desc "Software to emulate the TI 84 Plus family of calculators"
  homepage "https://education.ti.com/en/products/computer-software/ti-smartview-ce-for-84"

  livecheck do
    url "https://education.ti.com/smartview/downloads/84cemac"
    regex(/TI[._-]SmartView[._-]CE[._-]84[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :header_match
  end

  pkg "TI-SmartView-CE-84-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.ti.et.smartview.TI-SmartViewCE84"

  zap trash: [
    "~/Library/Logs/Texas Instruments/TI-SmartView CE for the TI-84 Plus Family",
    "~/Library/Saved Application State/com.ti.et.smartview.TISmartviewCE84.app.savedState",
  ]
end
