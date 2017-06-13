cask 'qz-tray' do
  version '2.0.3'
  sha256 '64421b277342a99c7e34a8bf7c75697e8717ddad2ed42f211b12fbffe5e4fc68'

  # github.com/qzind/tray was verified as official when first introduced to the cask
  url "https://github.com/qzind/tray/releases/download/v#{version}/qz-tray-#{version}.pkg"
  appcast 'https://github.com/qzind/tray/releases.atom',
          checkpoint: '09cc43c652b1928049e131ca28d137007a7a9431b4e3a8ff2e643cc755605e0a'
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
