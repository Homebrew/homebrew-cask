cask "epson-print-layout" do
  version "1.5.15"
  sha256 "97054cf4f8decf14545848d47abfdd9087fdd69233ad4747d9597657be6ec031"

  url "https://ftp.epson.com/drivers/EPL_#{version.no_dots}.dmg"
  name "Epson Print Layout"
  desc "Software to layout and print images with Epson printers"
  homepage "https://epson.com/epson-print-layout"

  # This checks the download support page for the newest macOS version that
  # lists the Epson Print Layout version. NOTE: We will need to periodically
  # review the download pages for the newest macOS versions to keep this check
  # up to date, otherwise it could end up persistently returning an older
  # version as newest.
  livecheck do
    url "https://epson.com/c/Epson-Print-Layout/s/SPT_PRINTLAYOUT?review-filter=macOS+14.x+%28Sonoma%29"
    regex(/Epson(?:\s|&nbsp;)*Print(?:\s|&nbsp;)*Layout(?:\s|&nbsp;)*v?(\d+(?:\.\d+)+)/im)
  end

  pkg "Epson Print Layout.pkg"

  uninstall pkgutil: "com.epson.printlayout.pkg"

  zap trash: [
    "~/Library/Application Support/com.epson.printlayout",
    "~/Library/HTTPStorages/com.epson.printlayout",
  ]
end
