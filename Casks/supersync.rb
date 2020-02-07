cask 'supersync' do
  version '7.0.5'
  sha256 '188a60ae85f0dc2d8df633dfb95241a65f163dd3b370c883f7f3366ad748d4f7'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  appcast 'https://supersync.com/downloads.php'
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
