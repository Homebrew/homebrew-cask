cask 'airtool' do
  version '1.3.3'
  sha256 '2758ca885c6ca7717cf319d4ca1e321a32fc9f193f030493791b7c219fed0976'

  # amazonaws.com/adriangranados was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/adriangranados/airtool_#{version}.pkg"
  appcast 'https://www.adriangranados.com/appcasts/airtoolcast.xml',
          checkpoint: '258758112e6ced219b9a4e2bc82b2213be623a80146a1079929cbba3fe703992'
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
