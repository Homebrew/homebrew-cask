cask 'iholdem-indicator' do
  version '6.6'
  sha256 '1ca8a364d3f693ac1d8d84b534a06b7e3aa6c0fbdde4a9e62badee0414c81cb9'

  url 'http://www.iholdemindicator.com/download/iHoldemIndicatorInstaller.pkg'
  appcast 'http://www.iholdemindicator.com/download/sparklerv2.xml'
  name 'iHoldem Indicator'
  homepage 'http://www.iholdemindicator.com/'

  pkg 'iHoldemIndicatorInstaller.pkg'

  uninstall launchctl: 'com.iholdemindicator.setenv',
            quit:      [
                         'com.ckmn.iHoldemIndicator',
                         'com.ckmn.IndicatorHelper',
                       ],
            pkgutil:   'com.ckmn.iholdemIndicator.iHoldemIndicator.pkg'

  zap trash: '~/Library/Application Support/iHoldemIndicator'
end
