cask 'papers' do
  version '3.4.3,458'
  sha256 '0bea17fde869cb3ee8057e888989abe2c39e35b1d0208d62fc9d7a14d636cc77'

  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          checkpoint: '2fff083f0bbfada12a7855d93193879700be699a4a18288a3d2264ec75ed0f85'
  name 'Papers'
  homepage 'http://www.papersapp.com/'
  license :commercial

  app 'Papers.app'
end
