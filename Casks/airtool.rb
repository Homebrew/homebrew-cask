cask 'airtool' do
  version '1.6'
  sha256 'ba7db87984d2f18f2d46cdbb0b75fdfdda920d3f43dfa3cf18aff1866bac0701'

  # amazonaws.com/apps.adriangranados.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/apps.adriangranados.com/airtool_#{version}.pkg"
  appcast 'https://www.adriangranados.com/appcasts/airtoolcast.xml',
          checkpoint: 'e2801e382b08cc44b507979619bfef3c1bb019d803a269148564e8366426d583'
  name 'Airtool'
  homepage 'https://www.adriangranados.com/apps/airtool'

  pkg "airtool_#{version}.pkg"

  uninstall pkgutil:    [
                          'com.adriangranados.airtool.airtool-bpf.*',
                          'com.adriangranados.airtool.Airtool.pkg',
                        ],
            launchctl:  'com.adriangranados.airtool.airtool-bpf.pkg',
            login_item: 'Airtool'

  zap trash: [
               '/Library/Application Support/Airtool',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.adriangranados.airtool.sfl*',
             ]
end
