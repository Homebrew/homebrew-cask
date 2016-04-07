cask 'iholdem-indicator' do
  version :latest
  sha256 :no_check

  url 'http://www.iholdemindicator.com/download/iHoldemIndicatorInstaller.pkg'
  name 'iHoldem Indicator'
  homepage 'http://www.iholdemindicator.com'
  license :commercial

  pkg 'iHoldemIndicatorInstaller.pkg'

  uninstall launchctl: 'com.iholdemindicator.setenv',
            quit:      ['com.ckmn.iHoldemIndicator', 'com.ckmn.IndicatorHelper'],
            pkgutil:   'iHoldemIndicatorInstaller',
            delete:    '/Applications/iHoldemIndicator.app'

  zap delete: '/Users/joshka/Library/Application Support/iHoldemIndicator'
end
