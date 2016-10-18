cask 'papers' do
  version '3.4.7,527'
  sha256 'a3772fad2fc4c5c273b597e136d7ba07e9f19c88b401d481f760697beb70ebe4'

  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'https://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          checkpoint: 'c35a04f02091fbcaf519185678a234c6e034d798561b19c7af4f0c590648450f'
  name 'Papers'
  homepage 'https://www.papersapp.com/'

  app 'Papers.app'
end
