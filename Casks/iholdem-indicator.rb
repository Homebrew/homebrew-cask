cask 'iholdem-indicator' do
  version '6.2'
  sha256 'bd726fd32c5f89d75f58968acaa4fda9f26bb004abe6161e3e779ba86fbbb06e'

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
