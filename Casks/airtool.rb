cask 'airtool' do
  version '1.3.5'
  sha256 '0e1aa4614e818e0ae579293d1997b5d85bbfefb7f349fed99ec366547fded9f0'

  # amazonaws.com/adriangranados was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/adriangranados/airtool_#{version}.pkg"
  appcast 'https://www.adriangranados.com/appcasts/airtoolcast.xml',
          checkpoint: '67f9a0be145410a24b2e6ab73b2b69e03d3e6d9396b240f1bd5e8c988028f171'
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
