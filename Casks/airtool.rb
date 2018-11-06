cask 'airtool' do
  version '1.7.2,24:1541191891'
  sha256 '7e04ad7e4fa73cf9ffded63ad5292a927b168ef536beb89757430efe2775aeee'

  # devmate.com/com.adriangranados.Airtool was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.adriangranados.Airtool/#{version.after_comma.before_colon}/#{version.after_colon}/Airtool-#{version.after_comma.before_colon}.zip"
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
