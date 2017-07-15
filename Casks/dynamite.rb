cask 'dynamite' do
  version '3.2.5'
  sha256 'd8f68bb331ae7e6201ad62bcee7483f73a91fefbb3ac0e3db28e3d87dcbae3d4'

  url "https://mediaatelier.com/DynaMite3/DynaMite_#{version}.zip"
  appcast 'https://mediaatelier.com/DynaMite3/feed.xml',
          checkpoint: 'e2ca62d7b2b3a650b30d572a0cb9a004588d7795eec6e550b206baef33e5bdfa'
  name 'DynaMite'
  homepage 'https://www.mediaatelier.com/DynaMite3/'

  depends_on macos: '>= :mavericks'

  app 'DynaMite.app'
end
