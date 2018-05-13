cask 'qz-tray' do
  version '2.0.6-1'
  sha256 'a7698a477826385ad895084ebd84c757832b80f04cbdfe21449e91f62fd1568f'

  # github.com/qzind/tray was verified as official when first introduced to the cask
  url "https://github.com/qzind/tray/releases/download/v#{version.major_minor_patch}/qz-tray-#{version}.pkg"
  appcast 'https://github.com/qzind/tray/releases.atom',
          checkpoint: '07ddf9328642c9bb9ca21922b83935e9313bd8086e46373f9b7a7ea334f775c8'
  name 'QZ Tray'
  homepage 'https://qz.io/'

  container type: :naked

  app 'QZ Tray.app'

  preflight do
    # app needs to be extracted as the installer would automatically open it
    FileUtils.cd staged_path do
      FileUtils.mkdir_p 'QZ Tray.app'
      system_command '/usr/bin/xar', args: ['-xf', "qz-tray-#{version}.pkg", 'Payload']
      system_command '/usr/bin/tar', args: ['-xf', 'Payload', '-C', 'QZ Tray.app']
      FileUtils.rm_rf ["qz-tray-#{version}.pkg", 'Payload']
    end
  end

  uninstall login_item: 'QZ Tray'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/:no-bundle:qz t.sfl*',
               '~/Library/Application Support/qz',
             ]
end
