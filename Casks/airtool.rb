cask 'airtool' do
  version '1.4.1'
  sha256 '3e3d03ae51f11d49f3248a7d57402add6896334665b1e571ba3560e4676496d5'

  # amazonaws.com/adriangranados was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/adriangranados/airtool_#{version}.pkg"
  appcast 'https://www.adriangranados.com/appcasts/airtoolcast.xml',
          checkpoint: 'be5ebb845b2cf05c33c732a910e883d32ddf6209b32515dab83ea9ff5b873fa7'
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
