cask 'sherlock' do
  version '1.7.2'
  sha256 '4f82d5c66ad8ef2156bac4ef5df1a036be7163908abb9e08837cedae2250071f'

  url 'https://sherlock.inspiredcode.io/download-dmg'
  appcast 'https://updates.devmate.com/io.inspiredcode.Sherlock.xml'
  name 'Sherlock'
  homepage 'https://sherlock.inspiredcode.io/'

  depends_on macos: '>= :sierra'

  app 'Sherlock.app'
end
