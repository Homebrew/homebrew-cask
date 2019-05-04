cask 'iholdem-indicator' do
  version '6.5'
  sha256 '57088eece7fd756363fe9e57956d1d60994529a7e9b1242d3c6a517c1b0954b2'

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
