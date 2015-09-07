cask :v1 => 'expandrive' do
  version '5.0.16'
  sha256 'a7bfc4022cb37bc0ffbed7c6e1b0042751a83fafd2690a659015861f6da6318c'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.gsub('.','-')}/download.dmg"
  name 'ExpanDrive'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => '33c61da85e936d948e852319804fc7bf4557c643b381639ac69369fb7f8044dc'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
