cask 'sunloginclient' do
  version '10.2.0.28522'
  sha256 '3b854bff658cf6c514ff007dbb73c61b48187d32b353ff637ed9b25fff7dd78e'

  url "http://dl-cdn.oray.com/sunlogin/mac/SunloginClient_#{version}.dmg"
  name 'Sunlogin X'
  name '向日葵 X'
  homepage 'https://sunlogin.oray.com/'

  pkg 'SunloginClient.pkg'

  uninstall quit:      'com.oray.sunlogin.macclient',
            pkgutil:   'com.mygreatcompany.pkg.SunloginClient',
            launchctl: [
                         'com.oray.sunlogin.desktopagent',
                         'com.oray.sunlogin.helper',
                         'com.oray.sunlogin.service',
                       ]
end
