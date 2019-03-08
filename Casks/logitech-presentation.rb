cask 'logitech-presentation' do
  version '1.52.95'
  sha256 '1d814eab908bb541e48f90fcd1af320e9ccc2aa98091e71b7c39e43642a80ac6'
  url 'https://download01.logi.com/web/ftp/pub/techsupport/presentation/LogiPresentation_1.52.95.dmg'
  homepage 'https://support.logitech.com/en_au/product/spotlight-presentation-remote'
  name 'Logitech Presentation'

  auto_updates true

  installer script: {
     executable: 'LogiPresentation Installer.app',
     sudo:       true,
   }

  uninstall login_item: 'LogiPresentation',
            rmdir:  '/Library/Application\ Support/Logitech.localized/Logitech\ Presentation.localized',
            delete: [
              'Applications/Logitech Presentation'
            ],
            quit:       [
                          'LogiPresentation',
                        ]

end
