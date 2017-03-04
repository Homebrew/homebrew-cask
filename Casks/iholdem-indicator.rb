cask 'iholdem-indicator' do
  version :latest
  sha256 :no_check

  url 'https://www.iholdemindicator.com/download/iHoldemIndicatorInstaller.pkg'
  name 'iHoldem Indicator'
  homepage 'https://www.iholdemindicator.com/'

  pkg 'iHoldemIndicatorInstaller.pkg'

  uninstall launchctl: 'com.iholdemindicator.setenv',
            quit:      [
                         'com.ckmn.iHoldemIndicator',
                         'com.ckmn.IndicatorHelper',
                       ],
            pkgutil:   'iHoldemIndicatorInstaller',
            delete:    '/Applications/iHoldemIndicator.app'

  zap delete: '~/Library/Application Support/iHoldemIndicator'
end
