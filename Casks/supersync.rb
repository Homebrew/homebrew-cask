cask 'supersync' do
  version '6.2'
  sha256 'c3a271d17e34c0542d30ca3558e17f40063d406ecb8248e5168e554113e59e89'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
