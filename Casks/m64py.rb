cask 'm64py' do
  version '0.2.4'
  sha256 '67f32f2276b535da56fda4b4dad96dd984db0a2ab7c5524f769f2a71a83ee608'

  url "https://downloads.sourceforge.net/m64py/m64py-#{version}/m64py-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/m64py/rss'
  name 'm64py'
  homepage 'http://m64py.sourceforge.net/'

  app 'm64py.app'
end
