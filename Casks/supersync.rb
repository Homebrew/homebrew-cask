cask 'supersync' do
  version '7.0.2'
  sha256 '7b110cee197eff492859c59c482d31181ff451739cbc3898c740b6a664c3b4c4'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  appcast 'https://supersync.com/downloads.php'
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
