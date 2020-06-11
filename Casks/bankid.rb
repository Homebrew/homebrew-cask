cask 'bankid' do
  version '7.9.1'
  sha256 '4dfc203b3c88625f9f294dcaf1bd935dc9862842a884639d6658bd8f01951ab3'

  url "https://install.bankid.com/Repository/BankID_installation_#{version.dots_to_underscores}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://install.bankid.com/FileDownloader?fileId=Mac',
          must_contain: version.dots_to_underscores
  name 'BankID'
  homepage 'https://install.bankid.com/'

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.bankid.BankID'
end
