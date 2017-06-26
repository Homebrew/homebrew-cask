cask 'studio-3t' do
  version '5.3.4'
  sha256 'a81b31ccf43dcda4374f04f6475a4aefd6e671742155e560224f8eb91a26f374'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '3320890a84c3fe972e75fe1bb77de8cf5acd50b9218fa8239b6b3a9ce2e52754'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
