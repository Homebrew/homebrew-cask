cask :v1 => 'expandrive' do
  version '5.0.18'
  sha256 '1ca1bbec817efe707ed56a0fd55faae33fc045ee1ea123b53921151264dc2ce5'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.gsub('.','-')}/download.dmg"
  name 'ExpanDrive'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => 'a40c6bc63dd8b9afe454a0976787cb53b8356f9298473bbce1b999a9d3f4bc3f'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
