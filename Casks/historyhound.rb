cask 'historyhound' do
  version '2.0.1'
  sha256 '51d59cb892008ca85bfea44cc8e9e4cc867068779cc6367cb6ac5365309c4a7c'

  url "https://www.stclairsoft.com/download/HistoryHound-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH'
  name 'HistoryHound'
  homepage 'https://www.stclairsoft.com/HistoryHound/'

  app 'HistoryHound.app'
end
