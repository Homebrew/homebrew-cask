cask "epson-print-layout" do
  version "1.5.17"
  sha256 "54e6977736130e6e6ff5b8e18297e8cdfd5d14a0061a230f08a4733c40ade820"

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

  depends_on :macos

  pkg "Epson Print Layout.pkg"

  uninstall pkgutil: "com.epson.printlayout.pkg"

  zap trash: [
    "~/Library/Application Support/com.epson.printlayout",
    "~/Library/HTTPStorages/com.epson.printlayout",
  ]
end
