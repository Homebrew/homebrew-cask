cask 'sound-blaster-command' do
  version '11.1.02.04'
  sha256 'd1264448def6d13e94c9465ac67d8b7a473ac9838c519821e3cee443fe43b268'

  url "https://download.creative.com/manualdn/Applications/100300/SEwNEWcs2X/SBCMD_MAC_L#{version.dots_to_underscores}.dmg"
  name 'Sound Blaster Command'
  homepage 'https://support.creative.com/'

  pkg 'INSTALL.pkg'

  uninstall script: {
                      executable:   '/Applications/Creative/Uninstaller.app/Contents/MacOS/Uninstaller',
                      must_succeed: true,
                      print_stderr: false,
                    },
            rmdir:  '/Applications/Creative'

  zap trash: [
               '~/Library/Application Support/Creative.SB-Command',
               '~/Library/Application Support/Creative.SB-Command.logs',
               '~/Library/Preferences/Creative.SB-Command.plist',
             ]
end
