cask "brother-monochrome-laser-drivers" do
  version "1.5.0"
  sha256 "ccd05a0ff77b516148780b0faac3e495cc38a6893f850a417f0d8275770fb253"

  url "https://download.brother.com/welcome/dlf105521/Brother_PrinterDrivers_MonochromeLaser_#{version.dots_to_underscores}.dmg"
  name "Brother Printer Drivers (Monochrome Laser)"
  desc "Printer drivers for Brother monochrome laser printers"
  homepage "https://support.brother.com/g/b/downloadlist.aspx?c=us_ot&lang=en&prod=hl1200_us_as&os=10088"

  livecheck do
    url "https://support.brother.com/g/b/downloadhowto.aspx?c=us_ot&lang=en&prod=hl1200_us_as&os=10088&dlid=dlf105521_000&flang=4&type3=10062"
    regex(/Brother[._-]PrinterDrivers[._-]MonochromeLaser[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on :macos

  pkg "Brother_PrinterDrivers_MonochromeLaser.pkg"

  uninstall pkgutil: "com.Brother.Brotherdriver.Brother_PrinterDrivers_MonochromeLaser"

  # No zap stanza required
end
