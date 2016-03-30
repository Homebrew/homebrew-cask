cask 'papers' do
  version '3.4.3,458'
  sha256 '0bea17fde869cb3ee8057e888989abe2c39e35b1d0208d62fc9d7a14d636cc77'

  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          checkpoint: '6318a782a6468687117a1dde52f10e0cf8f364fe77d8a61ac6d1b0269f4736c6'
  name 'Papers'
  homepage 'http://www.papersapp.com/'
  license :commercial

  app 'Papers.app'
end
