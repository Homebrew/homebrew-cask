cask 'logitech-presentation' do
  version '1.52.95'
  sha256 '1d814eab908bb541e48f90fcd1af320e9ccc2aa98091e71b7c39e43642a80ac6'

  # download01.logi.com/web/ftp/pub/techsupport/presentation was verified as official when first introduced to the cask
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
