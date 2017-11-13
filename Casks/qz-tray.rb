cask 'qz-tray' do
  version '2.0.4'
  sha256 '8f58eb7eef7670e1e930b02c0218e76fb5209e3b79d1502ef2e84302b88dc114'

  # github.com/qzind/tray was verified as official when first introduced to the cask
  url "https://github.com/qzind/tray/releases/download/v#{version}/qz-tray-#{version}.pkg"
  appcast 'https://github.com/qzind/tray/releases.atom',
          checkpoint: '5fab370b4376f9aebd6c8b2d519564d057be8495708d33f4964c5b9773090b83'
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
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/:no-bundle:qz t.sfl*',
                '~/Library/Application Support/qz',
              ]
end
