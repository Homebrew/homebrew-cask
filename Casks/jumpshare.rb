cask 'jumpshare' do
  version :latest
  sha256 :no_check

  url 'https://apps.jumpshare.com/desktop/mac/Jumpshare.dmg'
  name 'Jumpshare'
  homepage 'https://jumpshare.com/'
  license :gratis

  app 'Jumpshare.app'
end
