cask "loginputmac" do
  version "2.5.3,24161"
  sha256 "a6111d21be1f28e7a8ea748c7b98d5168432c20d47ad6abe93b05867429f58f5"

  # The install source has to be a PKG file otherwise both install and update will be failed.
  # Inputmethod (IME) is a special application that lives in `/Library/Input\ Method` not `/Application`,
  # and needs privilege to write in.
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
