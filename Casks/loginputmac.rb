cask "loginputmac" do
  version "2.5.3,24161"
  sha256 "9ad1e436283dbb6a60d040c205da3a31e5d97e999f53c6e6ed01682bb36e5857"

  # The install source has to be a PKG file otherwise both install and update will be failed. 
  # Inputmethod (IME) is a special application that lives in `/Library/Input\ Method` not `/Application`, and needs privilege to write in, 
  # Pls DO NOT change the path into `.app` again, those files only for sparkle update framework tho.
  
  url "https://loginput-mac2.totest.top/loginputmac#{version.major}_latest.pkg",
      verified: "loginput-mac2.totest.top/"
  name "LoginputMac"
  desc "Chinese input method"
  homepage "https://im.logcg.com/loginputmac#{version.major}"

  livecheck do
    url "https://im.logcg.com/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  pkg "loginputmac#{version.major}_latest.pkg"

  uninstall pkgutil: "com.logcg.pkg.LoginputMac#{version.major}",
            quit:    "com.logcg.inputmethod.LogInputMac#{version.major}"
end
