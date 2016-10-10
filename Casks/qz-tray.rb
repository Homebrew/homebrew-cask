cask 'qz-tray' do
  version '2.0.1'
  sha256 '2a76a6a40bad325f021c0c1aec98fbe35371174f4d0405a6775d465e7880ed4a'

  # github.com/qzind/tray was verified as official when first introduced to the cask
  url "https://github.com/qzind/tray/releases/download/v#{version}/qz-tray-#{version}.pkg"
  appcast 'https://github.com/qzind/tray/releases.atom',
          checkpoint: '33433b9469834be02d4297aaf6fe079bb5bbcd96fa86f914dd92848fdf0ab1b3'
  name 'QZ Tray'
  homepage 'https://qz.io/'

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
