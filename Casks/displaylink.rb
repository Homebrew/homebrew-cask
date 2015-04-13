cask :v1 => 'displaylink' do
  if MacOS.release <= :leopard
    version '1.7'
    sha256 'b35dc49fe286aa858d7f6f44fd3f6703de83fae2316d20b05e637a1134ba2440'
  elsif MacOS.release <= :snow_leopard
    version '2.2'
    sha256 '5c9a97a476b5ff27811491eebb653a03c96f899562b67566c24100d8593b1daa'
  else
    version '2.3'
    sha256 'd253ed142f81a5d4e48758616651ce29cd50a1044d20abb0ccf41d669706d9dd'
  end

  url 'http://www.displaylink.com/support/file.php',
      :data => {
        'file' => "DisplayLink_Mac_#{version}.dmg",
        'folder' => 'publicsoftware'
      },
      :using => :post

  homepage 'http://www.displaylink.com'
  license :gratis

  pkg 'DisplayLink Software Installer.pkg'

  uninstall :pkgutil => [
                         'com.displaylink.displaylinkdriver',
                         'com.displaylink.displaylinkdriversigned',
                         'com.displaylink.displaylinkdriverunsigned'
                        ],
            # 'kextunload -b com.displaylink.driver.DisplayLinkDriver' causes kernel panic
            # :kext => [
            #            'com.displaylink.driver.DisplayLinkDriver',
            #            'com.displaylink.dlusbncm'
            #           ],
            :launchctl => [
                           'com.displaylink.useragent-prelogin',
                           'com.displaylink.useragent',
                           'com.displaylink.displaylinkmanager'
                          ],
            :quit => 'DisplayLinkUserAgent',
            :delete => [
                        '/Applications/DisplayLink',
                        '/Library/LaunchAgents/com.displaylink.useragent-prelogin.plist',
                        '/Library/LaunchAgents/com.displaylink.useragent.plist',
                        '/Library/LaunchDaemons/com.displaylink.displaylinkmanager.plist'
                       ]

  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the DisplayLink
    Software License Agreement at

      http://www.displaylink.com/support/sla.php?fileid=102
  EOS
end
