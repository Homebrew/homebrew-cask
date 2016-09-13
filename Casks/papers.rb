cask 'papers' do
  version '3.4.6,523'
  sha256 '5cbc3a60a944d622bd40b9cc1424543e873fa340631d0b67c77cc8500ec0f164'

  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'https://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          checkpoint: '5628cd0bf9c6b9bf57861d595da2d9dbce63ad8fd0629fe22c622f06c1c10398'
  name 'Papers'
  homepage 'https://www.papersapp.com/'
  license :commercial

  app 'Papers.app'
end
