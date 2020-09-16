cask "bankid" do
  version "7.9.2"
  sha256 "a97bc40668009ed5d2291a9493d141ad6f25b9c2c61762ee50414b5868e3c20a"

  url "https://install.bankid.com/Repository/BankID_installation_#{version.dots_to_underscores}.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://install.bankid.com/FileDownloader?fileId=Mac",
          must_contain: version.dots_to_underscores
  name "BankID"
  homepage "https://install.bankid.com/"

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.bankid.BankID"
end
