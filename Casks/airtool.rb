cask 'airtool' do
  version '1.6.1'
  sha256 '68fa07f9c3d452a34f505f454640e3920f919236b6017dda0a16d5f486f41b2d'

  url "https://www.adriangranados.com/downloads/airtool_#{version}.pkg"
  appcast 'https://updates.devmate.com/com.adriangranados.Airtool.xml',
          checkpoint: 'f958fc2ca7c337d9991fe150deeb1a22d6e2030eb0d0a3c7946b9070adf2f38e'
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
