cask 'historyhound' do
  version '2.0'
  sha256 'eb6be5bbd0b87cfac6cf40b10613c2eb5f5653676641e70b709cf1c6690f8bc8'

  url "https://www.stclairsoft.com/download/HistoryHound-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH'
  name 'HistoryHound'
  homepage 'https://www.stclairsoft.com/HistoryHound/'

  app 'HistoryHound.app'
end
