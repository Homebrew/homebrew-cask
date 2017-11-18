cask 'qz-tray' do
  version '2.0.4-1'
  sha256 'f388fa0d696ad90cdcdd9a7e81bff2a8755f3f2817dc171763e2e26f0e6d404c'

  # github.com/qzind/tray was verified as official when first introduced to the cask
  url "https://github.com/qzind/tray/releases/download/v#{version.sub('-1', '')}/qz-tray-#{version}.pkg"
  appcast 'https://github.com/qzind/tray/releases.atom',
          checkpoint: '991f92c10fd6208642d8f21e6947687a02f2e8a69d1ddbca7a3fa77220cfa73d'
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
