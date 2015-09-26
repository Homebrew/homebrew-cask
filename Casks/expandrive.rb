cask :v1 => 'expandrive' do
  version '5.0.19'
  sha256 'a95d9d3305c28db6ac34f7b0a165d069a1d0174578fcf967b85156dc81c85a05'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.gsub('.','-')}/download.dmg"
  name 'ExpanDrive'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => '5716be02c88b6c621d5219b1867b9eebd99ad21b2cbea406581523032a3fc7b3'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
