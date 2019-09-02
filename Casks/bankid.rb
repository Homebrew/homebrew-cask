cask 'bankid' do
  version '7.8.0'
  sha256 'd3213ae61fb5a3b78f7540e04fc98f8b020d4fb9d961c48074785866c074932f'

  url "https://install.bankid.com/Repository/BankID_installation_#{version.dots_to_underscores}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://install.bankid.com/FileDownloader?fileId=Mac',
          configuration: version.dots_to_underscores
  name 'BankID'
  homepage 'https://install.bankid.com/'

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.bankid.BankID'
end
