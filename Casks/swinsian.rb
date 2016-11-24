cask 'swinsian' do
  version '1.12.5'
  sha256 '35c950542c8ee9b2fa7ec8b9d60e5b0bf993a7fe3b65a91f5ad84fac655dcf9d'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: '8be35d1df8c3f62e698bde7998afad79e244f63b966724029f20312cf9b4703f'
  name 'Swinsian'
  homepage 'https://swinsian.com'

  app 'Swinsian.app'
end
