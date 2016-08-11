cask 'airtool' do
  version '1.3.4'
  sha256 '12a6900d5630a6d6bd8917e468df76ef05a8f39a66cafa3bf9cbbd90663fd14b'

  # amazonaws.com/adriangranados was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/adriangranados/airtool_#{version}.pkg"
  appcast 'https://www.adriangranados.com/appcasts/airtoolcast.xml',
          checkpoint: '1250c87edc26c5cc7de6e290f82711c256ce786dc84c6774fd69be7b37fa8d33'
  name 'Airtool'
  homepage 'https://www.adriangranados.com/apps/airtool'
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
