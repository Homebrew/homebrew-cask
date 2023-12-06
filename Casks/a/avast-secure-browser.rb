cask "avast-secure-browser" do
  version "119.1.4653.160"
  sha256 :no_check

  url "https://cdn-download.avastbrowser.com/AvastSecureBrowserSetup.pkg",
      verified: "cdn-download.avastbrowser.com/"
  name "Avast Secure Browser"
  desc "Web browser focusing on privacy"
  homepage "https://www.avast.com/secure-browser#mac"

  livecheck do
    url :url
    strategy :extract_plist
  end

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
