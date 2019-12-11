cask 'airtool' do
  version '1.9'
  sha256 '605cf374a8c12ea2f976e78e33289095232a80a6ece1e748103c6f109b234d50'

  url "https://www.adriangranados.com/downloads/Airtool_#{version}.pkg"
  appcast 'https://www.adriangranados.com/apps/airtool'
  name 'Airtool'
  homepage 'https://www.adriangranados.com/apps/airtool'

  pkg "Airtool_#{version}.pkg"

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
