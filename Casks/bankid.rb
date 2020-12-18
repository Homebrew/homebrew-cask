cask "bankid" do
  version "7.10.0"
  sha256 "4ea124c97c4d138bdf32de71ff32074bebd79614a4f1e35e16aa5a6b24fafd1e"

  url "https://install.bankid.com/Repository/BankID_installation_#{version.dots_to_underscores}.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://install.bankid.com/FileDownloader?fileId=Mac",
          must_contain: version.dots_to_underscores
  name "BankID"
  homepage "https://install.bankid.com/"

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.bankid.BankID"
end
