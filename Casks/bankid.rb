cask 'bankid' do
  version '7.8.1'
  sha256 '8f6aa62611918baa46e1675ecb9a956b5f62689aa4698ba1d2d79f2272f1ccc6'

  url "https://install.bankid.com/Repository/BankID_installation_#{version.dots_to_underscores}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://install.bankid.com/FileDownloader?fileId=Mac',
          configuration: version.dots_to_underscores
  name 'BankID'
  homepage 'https://install.bankid.com/'

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.bankid.BankID'
end
