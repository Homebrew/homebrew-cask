cask 'papers' do
  version '3.4.12,550'
  sha256 '7825647a1a6a21594acbb643d664751dc727cf5238c0b7d35a01ba6778715971'

  # appcaster.papersapp.com/apps/mac/production/download was verified as official when first introduced to the cask
  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'https://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          checkpoint: 'ef674d808bf92ee6f004af91bb6ba89c636c3336cfeaa5210bfb10fbc05f18bc'
  name 'Papers'
  homepage 'https://www.readcube.com/papers/'

  app 'Papers.app'
end
