cask 'freedome' do
  version :latest
  sha256 :no_check

  url 'https://download.sp.f-secure.com/freedome/installer/Freedome.dmg'
  name 'F-Secure Freedome'
  homepage 'https://www.f-secure.com/en_US/web/home_us/freedome'

  app 'Freedome.app'

  uninstall_preflight do
    set_ownership "#{appdir}/Freedome.app"
  end

  uninstall delete:    '/Library/Application Support/F-Secure/FSFreedome',
            launchctl: 'com.fsecure.freedome.uninstall',
            quit:      'com.fsecure.freedome.osx',
            script:    {
                         executable: '/Library/Application Support/F-Secure/FSFreedome/admin/UninstallFreedome.sh',
                         args:       ["#{appdir}/Freedome.app"],
                         sudo:       true,
                       }

  zap trash: [
               '~/Library/Application Support/F-Secure/FSFreedome',
               '~/Library/Caches/com.fsecure.freedome.osx',
             ],
      rmdir: [
               '~/Library/Application Support/F-Secure/',
               '/Library/Application Support/F-Secure',
             ]
end
