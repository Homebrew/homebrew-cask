cask 'airtool' do
  version '1.3.1'
  sha256 '93506b2d02650d91174669a389d27c4ec7f458e990d72c5fb3a3f542b66c32d6'

  # amazonaws.com/adriangranados was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/adriangranados/airtool_#{version}.pkg"
  appcast 'https://www.adriangranados.com/appcasts/airtoolcast.xml',
          checkpoint: '717a2856bb3d239314cd11958feae648b5175fe46879c9e146694355f1dd7718'
  name 'Airtool'
  homepage 'http://www.adriangranados.com/apps/airtool'
  license :gratis

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
