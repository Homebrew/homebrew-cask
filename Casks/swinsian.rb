cask 'swinsian' do
  version '0.11.6'
  sha256 'a8ff6d109b99734a8cd8fea31bc0fb3bd074977a2ae1470fd556f4953596321f'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: 'ef77eb08b391183659bce2b97d6d1acceeb99950efa409887b653c83f7ebbe7c'
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
