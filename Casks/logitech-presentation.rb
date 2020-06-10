cask 'logitech-presentation' do
  version '1.54.84'
  sha256 '3b6a52b3b0f4ee036101239bd6a28c61a04dccf22b6dbf272f2d17920d2462e2'

  # download01.logi.com/web/ftp/pub/techsupport/presentation/ was verified as official when first introduced to the cask
  url "https://download01.logi.com/web/ftp/pub/techsupport/presentation/LogiPresentation_#{version.major_minor_patch}.dmg"
  name 'Logitech Presentation'
  homepage 'https://support.logitech.com/en_au/product/spotlight-presentation-remote'

  auto_updates true
  depends_on macos: '>= :sierra'

  installer manual: 'LogiPresentation Installer.app'

  uninstall delete:     '/Applications/Logitech Presentation',
            login_item: 'LogiPresentation',
            signal:     [
                          ['KILL', 'LogiPresentation'],
                        ]

  zap trash: '/Library/Application Support/Logitech.localized/Logitech Presentation.localiz'
end
