cask "omx-ebooks" do
  version :latest
  sha256 :no_check

  url "https://hello.officemax.com.au/ebooks/clkn/https/www.officemaxschools.com.au/ebooks/OMX_eBooks.pkg"
  name "OMX eBooks"
  homepage "https://hello.officemax.com.au/ebooks/"

  pkg "OMX_eBooks.pkg"

  uninstall pkgutil: "com.readcloud.OMXeBooks"

  zap trash: [
    "/Users/Shared/omxebooks",
    "/private/var/folders/4n/y4h_w3ds6gs8h2shnrz34rw80000gn/C/org.cef.cefsimple",
    "~/Library/Caches/org.cef.cefsimple",
    "~/Library/Saved Application State/org.cef.cefsimple.savedState",
    "~/Library/Caches/omxebooks",
    "/private/var/db/receipts/com.readcloud.OMXeBooks.bom",
    "/private/var/db/receipts/com.readcloud.OMXeBooks.plist",
    "~/Library/Preferences/org.cef.cefsimple.plist",
    "~/Library/Preferences/org.cef.cefclient.helper.plist",
    "~/Library/Logs/OMX eBooks_debug.log",
    "~/Library/Application Support/CrashReporter/OMX eBooks*",
  ]
end
