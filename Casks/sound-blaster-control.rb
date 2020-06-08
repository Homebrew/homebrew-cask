cask 'sound-blaster-control' do
  version '13.1.04.18'
  sha256 'ee8a99f2b2a680eb248f9a0af8a4a378b3c7f2eeb0b990fed8c6bd024638e59c'

  url "https://download.creative.com/manualdn/Drivers/MSP/13734/0xF59C93D4/SDBR_WBMAC_L#{version.dots_to_underscores}.dmg.zip"
  name 'Sound Blaster Control'
  homepage 'https://support.creative.com/'

  depends_on macos: '>= :mavericks'

  pkg 'Install.pkg'

  uninstall script: {
                      executable:   '/Applications/Creative/Uninstaller.app/Contents/MacOS/Uninstaller',
                      must_succeed: true,
                      print_stderr: false,
                    },
            rmdir:  '/Applications/Creative'
end
