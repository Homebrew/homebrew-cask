cask "avast-security" do
  version :latest
  sha256 :no_check

  url "http://download.ff.avast.com/mac/avast_security_online.dmg"
  name "Avast Security"
  homepage "https://www.avast.com/"

  pkg "Avast Security.pkg"

  uninstall script:  {
    executable:   "/Applications/Avast.app/Contents/Backend/hub/uninstall.sh",
    must_succeed: false, # A non-0 exit code may be given even if the uninstall succeeds (https://github.com/Homebrew/homebrew-cask/issues/21740#issuecomment-224094946).
    sudo:         true,
  },
            pkgutil: "com.avast.AAFM"

  zap trash: [
    "~/Library/Preferences/com.avast.avast!.plist",
    "~/Library/Cookies/com.avast.AAFM.binarycookies",
  ]
end
