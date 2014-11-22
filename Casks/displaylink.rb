cask :v1 => 'displaylink' do
  version '2.2'
  sha256 '5c9a97a476b5ff27811491eebb653a03c96f899562b67566c24100d8593b1daa'

  url 'http://www.displaylink.com/support/file.php',
      :data => {
        'file' => "DisplayLink_Mac_#{version}.dmg",
        'folder' => 'publicsoftware',
        'id' => '330'
      },
      :using => :post
  homepage 'http://www.displaylink.com'
  license :unknown

  pkg 'DisplayLink Software Installer.pkg'

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
            # :delete => '/Applications/DisplayLink Software Uninstaller.app'
  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the DisplayLink
    Software License Agreement at

      http://www.displaylink.com/support/sla.php?fileid=102
  EOS
end
