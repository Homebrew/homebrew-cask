cask 'bankid' do
  version '7.7.1'
  sha256 '7f6ae74d49860695c3753235a04e9b9d0e4e5d13305cb2714e6a02fb632ea803'

  url "https://install.bankid.com/Repository/BankID_installation_#{version.dots_to_underscores}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://install.bankid.com/FileDownloader?fileId=Mac',
          configuration: version.dots_to_underscores
  name 'BankID'
  homepage 'https://install.bankid.com/'

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.bankid.BankID'
end
