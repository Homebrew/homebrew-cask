class Displaylink < Cask
  url 'http://www.displaylink.com/support/file.php',
      :data => {
        'file' => 'DisplayLink_MacOSX_V2.1.dmg',
        'bucket' => 'displaylinkwebdrivers',
        'id' => '315'
      },
      :using => :post
  homepage 'http://www.displaylink.com'
  version '2.1'
  sha256 '0c872a7f408533337f24d7551c2fdbe1451eb4443a7e2baa5bca01e3da676f97'
  install 'DisplayLink Software Installer.pkg'
  uninstall :pkgutil => ['com.displaylink.displaylinkdriversigned',
                         'com.displaylink.displaylinkdriverunsigned']
            # :kext => ['com.displaylink.driver.DisplayLinkDriver',
            #           'com.displaylink.dlusbncm'],
            # :launchctl => ['com.displaylink.displaylinkmanager',
            #                'com.displaylink.useragent',
            #                'com.displaylink.useragent-prelogin'],
            # :quit => ['DisplayLink.DisplayLinkUserAgent'],
            # :script => {
            #   :executable => 'DisplayLink Software Uninstaller.app/Contents/MacOS/DisplayLink Software Uninstaller'
            # },
            # :files => ['/Applications/DisplayLink Software Uninstaller.app']
  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the DisplayLink
    Software License Agreement at

        http://www.displaylink.com/support/sla.php?fileid=102
  EOS
end
