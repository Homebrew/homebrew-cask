cask 'airtool' do
  version '1.7.3'
  sha256 '721ed94e45a71a02f211ede7fcd93d0152c51d80b269c49c9b35c62f1c3e7817'

  url "https://www.adriangranados.com/downloads/airtool_#{version}.pkg"
  appcast 'https://updates.devmate.com/com.adriangranados.Airtool.xml'
  name 'Airtool'
  homepage 'https://www.adriangranados.com/apps/airtool'

  pkg "airtool_#{version}.pkg"

  uninstall_preflight do
    set_ownership '/Library/Application Support/Airtool'
  end

  uninstall pkgutil:    [
                          'com.adriangranados.airtool.airtool-bpf.*',
                          'com.adriangranados.airtool.Airtool.pkg',
                        ],
            launchctl:  'com.adriangranados.airtool.airtool-bpf',
            login_item: 'Airtool',
            delete:     '/Library/Application Support/Airtool'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.adriangranados.airtool.sfl*'
end
