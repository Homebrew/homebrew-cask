cask 'iholdem-indicator' do
  version '6.3'
  sha256 '3a47e6e9d121564bf25fae927797c11fd7fc8c963506383503127a39359cc6d1'

  url 'http://www.iholdemindicator.com/download/iHoldemIndicatorInstaller.pkg'
  appcast 'http://www.iholdemindicator.com/download/sparklerv2.xml'
  name 'iHoldem Indicator'
  homepage 'https://www.iholdemindicator.com/'

  pkg 'iHoldemIndicatorInstaller.pkg'

  uninstall launchctl: 'com.iholdemindicator.setenv',
            quit:      [
                         'com.ckmn.iHoldemIndicator',
                         'com.ckmn.IndicatorHelper',
                       ],
            pkgutil:   'com.ckmn.iholdemIndicator.iHoldemIndicator.pkg'

  zap trash: '~/Library/Application Support/iHoldemIndicator'
end
