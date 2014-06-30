class Orbicule < Cask
  version '6.0'
  sha256 '07d9b20eba2a873e538e4f2ae4c1dcafafd282fb8af01f3374b08e54069d9932'

  url 'http://assets.undercoverhq.com/client/6.0/undercover_mac.pkg'
  homepage 'http://orbicule.com/undercover/mac/'


  install 'undercover_mac.pkg'

  caveats do
    puts 'You need to reboot and to register your app'
    puts 'Please run Undercover Registration.app'
    files_in_usr_local
    reboot
  end

#  after_install


  uninstall :pkgutil => 'com.orbicule.pkg.Undercover'
  uninstall :quit => 'com.orbicule.UCAgent' #probably won't work, as it needs root
  uninstall :quit => 'com.orbicule.uc' #probably won't work, as it needs root
  uninstall :launchctl => 'com.orbicule.UCAgent'
  uninstall :launchctl => 'com.orbicule.uc'
  uninstall :early_script => '/usr/local/uc/bin/Undercover Registration.app/Contents/MacOS/uc-uninstall'
  uninstall :script => {
    :executable => '/usr/bin/killall',
    :args => %w[-9 uc]
  }

  uninstall :script => {
    :executable => '/usr/bin/killall',
    :args => %w[-9 UCAgent]
  }

end
