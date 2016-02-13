cask 'airtool' do
  version '1.2.2'
  sha256 'faa93364724f3544be52f4bec04836a58cc63fd94b6b6f03424058c4e61ee076'

  # amazonaws.com/adriangranados was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/adriangranados/airtool_#{version}.pkg"
  appcast 'https://www.adriangranados.com/appcasts/airtoolcast.xml',
          checkpoint: '9744ed49ec6bf20d5eb90bdc0fffdc79383f4660a6ba22effd4399b5297feb36'
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
