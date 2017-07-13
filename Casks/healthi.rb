cask 'healthi' do
  version '2.3.0'
  sha256 '918afbbd35513c4a7acb958253b2539609d7c155c967479f46d7e99123d690ba'

  url "https://github.com/pablopunk/healthi-app/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi-app/releases.atom',
          checkpoint: 'ed3ef6fe973672637e860b6e63d60c916303da4fc8bc13652e5928a78bc0b359'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi-app'

  app 'healthi.app'
end
