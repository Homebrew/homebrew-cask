cask "avast-security" do
  version "15.7.5"
  sha256 :no_check

  url "https://bits.avcdn.net/productfamily_ANTIVIRUS/insttype_FREE/platform_MAC/installertype_ONLINE/build_RELEASE/",
      verified: "bits.avcdn.net/productfamily_ANTIVIRUS/insttype_FREE/platform_MAC/installertype_ONLINE/"
  name "Avast Security"
  desc "Antivirus software"
  homepage "https://www.avast.com/"

  livecheck do
    url "http://mac-av.u.avcdn.net/mac-av/10_11/AAFM/changelog.html"
    regex(%r{<h2>(\d+(?:\.\d+)+).*</h2>}i)
  end

  # pkg cannot be installed automatically
  installer manual: "Install Avast Security.pkg"

  uninstall launchctl: [
              "com.avast.hub",
              "com.avast.hub.schedule",
              "com.avast.hub.xpc",
            ],
            script:    {
              executable:   "/Applications/Avast.app/Contents/Backend/hub/uninstall.sh",
              must_succeed: false, # A non-0 exit code may be given even if the uninstall succeeds (https://github.com/Homebrew/homebrew-cask/issues/21740#issuecomment-224094946).
              sudo:         true,
            },
            pkgutil:   [
              "com.avast.AAFM",
              "com.avast.pkg.hub",
            ]

  zap trash: [
    "~/Library/Cookies/com.avast.AAFM.binarycookies",
    "~/Library/Preferences/com.avast.avast!.plist",
  ]
end
