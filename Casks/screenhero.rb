cask 'screenhero' do
  version '2.3.8.0'
  sha256 '4a6dde7b647afb898680a4456908f32769b31d8ac36b290916427981b4bc76ec'

  url "https://secure.screenhero.com/update/screenhero/Screenhero-#{version}.dmg"
  appcast 'https://d3hb26arjl8wb7.cloudfront.net/jsherwani/public/update/mac/screenhero/sparkle.xml',
          checkpoint: '324493ad3c8a18b98321f7286781c7b907910c53aaf459f88f5194c4897606ca'
  name 'Screenhero'
  homepage 'https://screenhero.com/'
  license :commercial

  app 'Screenhero.app'
end
