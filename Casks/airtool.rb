cask 'airtool' do
  version '1.5.3'
  sha256 'b0f25de817d65a9b0b2dc43a28314fbe0a73b432734df3946011ccc76f1c28fa'

  # amazonaws.com/apps.adriangranados.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/apps.adriangranados.com/airtool_#{version}.pkg"
  appcast 'https://www.adriangranados.com/appcasts/airtoolcast.xml',
          checkpoint: '4bb486cdada95af62d87eabf8d6d62a8711f75d279bec1002e67c18aa0cbef98'
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
