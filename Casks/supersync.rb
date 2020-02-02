cask 'supersync' do
  version '7.0.3'
  sha256 '05259f3960a3039debd90691cc77af93ca2cd7f45c15e9abff5240d44e0f7d12'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  appcast 'https://supersync.com/downloads.php'
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
