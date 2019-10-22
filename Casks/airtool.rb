cask 'airtool' do
  version '1.8'
  sha256 '00a0c5b378ada363c3ecb69b4d5078edc84755c1fc446d61bb562c99a5ccb123'

  url "https://www.adriangranados.com/downloads/Airtool_#{version}.pkg"
  appcast 'https://updates.devmate.com/com.adriangranados.Airtool.xml'
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
