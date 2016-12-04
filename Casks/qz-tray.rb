cask 'qz-tray' do
  version '2.0.2'
  sha256 'c80763bdc501e19e7880aa9d0c30fcdc29dcceb7267dbdecd9e14e7cd870ab99'

  # github.com/qzind/tray was verified as official when first introduced to the cask
  url "https://github.com/qzind/tray/releases/download/v#{version}/qz-tray-#{version}.pkg"
  appcast 'https://github.com/qzind/tray/releases.atom',
          checkpoint: '568149289d68d429f4a5ee4905d3e2b05c7a816e49c215b60a2de3b6a0e14f49'
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

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/:no-bundle:qz t.sfl',
                '~/Library/Application Support/qz',
              ]
end
