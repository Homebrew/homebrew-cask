cask 'airtool' do
  version '1.5.2'
  sha256 '44916ef0a988287f7e8f0b3e5a256fa82069a12a8f080f26f49d1bafd293d7b2'

  # amazonaws.com/apps.adriangranados.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/apps.adriangranados.com/airtool_#{version}.pkg"
  appcast 'https://www.adriangranados.com/appcasts/airtoolcast.xml',
          checkpoint: '86821c7eed263fafce0ba3dde932791420a5d0ce121f861b0292a00329d8749c'
  name 'Airtool'
  homepage 'https://www.adriangranados.com/apps/airtool'

  pkg "airtool_#{version}.pkg"

  uninstall pkgutil:    [
                          'com.adriangranados.airtool.airtool-bpf.*',
                          'com.adriangranados.airtool.Airtool.pkg',
                        ],
            launchctl:  'com.adriangranados.airtool.airtool-bpf.pkg',
            login_item: 'Airtool'

  zap delete: [
                '/Library/Application Support/Airtool',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.adriangranados.airtool.sfl',
              ]
end
