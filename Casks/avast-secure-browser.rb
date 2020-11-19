cask "avast-secure-browser" do
  version :latest
  sha256 :no_check

  # cdn-download.avastbrowser.com/ was verified as official when first introduced to the cask
  url "https://cdn-download.avastbrowser.com/AvastSecureBrowserSetup.pkg"
  name "Avast Secure Browser"
  desc "Web browser focusing on privacy"
  homepage "https://www.avast.com/secure-browser#mac"

  pkg "AvastSecureBrowserSetup.pkg"

  uninstall delete:  "~/Library/LaunchAgents/com.avast.browser.*",
            pkgutil: "com.avast.browser"
end
