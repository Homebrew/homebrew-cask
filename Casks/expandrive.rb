cask :v1 => 'expandrive' do
  version '5.0.10'
  sha256 '4702399f6eec284d2de8896653c0d6f18052435665677523798b0ed29b92278d'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.gsub('.','-')}/download.dmg"
  name 'ExpanDrive'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => 'cc088ffa8171c2d8fde2404f00a31711d9e8ff07172f28aac8088b79f60404fc'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
