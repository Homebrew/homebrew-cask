class Displaylink < Cask
  url 'http://www.displaylink.com/support/file.php',
      :data => {
        'file' => 'DisplayLink_MacOSX_V2.2Beta.dmg',
        'folder' => 'publicsoftware',
        'id' => '330'
      },
      :using => :post
  homepage 'http://www.displaylink.com'
  version '2.2Beta'
  sha256 '7e37481a9c414df8ae59c51a7c21a4c35d3f494b47304a59bdfa5a3ee5d8e795'
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
