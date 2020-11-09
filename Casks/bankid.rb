cask "bankid" do
  version "7.9.3"
  sha256 "4d1ef35b9e5d2c7047bc68dffd6d483511e4e27bd6d516f64a93ca377c9dde53"

  url "https://install.bankid.com/Repository/BankID_installation_#{version.dots_to_underscores}.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://install.bankid.com/FileDownloader?fileId=Mac",
          must_contain: version.dots_to_underscores
  name "BankID"
  homepage "https://install.bankid.com/"

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.bankid.BankID"
end
