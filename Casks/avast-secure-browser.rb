cask "avast-secure-browser" do
  version "1.23.0"
  sha256 :no_check

  # cdn-download.avastbrowser.com/ was verified as official when first introduced to the cask
  url "https://cdn-download.avastbrowser.com/AvastSecureBrowserSetup.pkg"
  name "Avast Secure Browser"
  desc "Web browser focusing on privacy"
  homepage "https://www.avast.com/secure-browser#mac"

  pkg "AvastSecureBrowserSetup.pkg"

  uninstall quit:    "com.avast.browser",
            pkgutil: "com.avast.browser"

  zap trash: [
    "~/Library/Application Support/AVAST Software/Browser",
    "~/Library/Caches/AVAST Software/Browser",
    "~/Library/Caches/com.avast.browser",
    "~/Library/Preferences/com.avast.AvastSecureBrowser.plist",
    "~/Library/Preferences/com.avast.browser.plist",
    "~/Library/Saved Application State/com.avast.browser.savedState",
  ],
      rmdir: [
        "~/Library/Application Support/AVAST Software",
        "~/Library/Caches/AVAST Software",
      ]
end
