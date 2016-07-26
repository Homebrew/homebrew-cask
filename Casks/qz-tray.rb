cask 'qz-tray' do
  version '2.0.0'
  sha256 '3dc4431daec073921a1430d7f8ceacd02a505e5937362e9ad8bd2f2e1ac6f1f6'

  # github.com/qzind/tray was verified as official when first introduced to the cask
  url "https://github.com/qzind/tray/releases/download/v#{version}/qz-tray-#{version}.pkg"
  appcast 'https://github.com/qzind/tray/releases.atom',
          checkpoint: '7da025b1cda09ae75dae8251afd6d039ee04271cc237b9f19ed18026093273a4'
  name 'QZ Tray'
  homepage 'https://qz.io/'
  license :gratis

  container type: :naked

  app 'QZ Tray.app'

  preflight do
    # app needs to be extracted as the installer would automatically open it
    FileUtils.cd staged_path do
      FileUtils.mkdir_p 'QZ Tray.app'
      system '/usr/bin/xar', '-xf', "qz-tray-#{version}.pkg", 'Payload'
      system '/usr/bin/tar', '-xf', 'Payload', '-C', 'QZ Tray.app'
      FileUtils.rm_rf ["qz-tray-#{version}.pkg", 'Payload']
    end
  end

  uninstall login_item: 'QZ Tray'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/:no-bundle:qz t.sfl',
                '~/Library/Application Support/qz',
              ]
end
