cask 'freedome' do
  version '2.19.5374.0'
  sha256 'c8211f6b8f69ec3b084fd1a33f1d1de36a775a6dadfeea66732a01377e95ce4b'

  url 'https://download.sp.f-secure.com/freedome/installer/2/Freedome.pkg'
  name 'F-Secure Freedome'
  homepage 'https://www.f-secure.com/en_US/web/home_us/freedome'

  pkg 'Freedome.pkg'

  uninstall pkgutil:   [
                         'com.f-secure.freedome.app',
                         'com.f-secure.freedome.fsvpn',
                       ],
            launchctl: [
                         'com.f-secure.freedome.uninstall',
                         'com.f-secure.freedome.fsvpn-upstream.production',
                         'com.f-secure.freedome.fsvpn-service-helper.production',
                         'com.f-secure.freedome.fsvpn-service.production',
                         'com.f-secure.freedome.gui',
                       ]
end
