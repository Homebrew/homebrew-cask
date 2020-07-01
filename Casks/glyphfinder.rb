cask 'glyphfinder' do
  version '1.3.0'
  sha256 '82cf68acc2fb2be861ed98ade7f553a3b43967a0859cba477f5b35b9030145cd'

  # ueber.fra1.cdn.digitaloceanspaces.com/glyphfinder/ was verified as official when first introduced to the cask
  url "https://ueber.fra1.cdn.digitaloceanspaces.com/glyphfinder/mac/Glyphfinder-#{version}-mac.dmg"
  appcast 'https://www.glyphfinder.com/'
  name 'Glyphfinder'
  homepage 'https://www.glyphfinder.com/'

  app 'Glyphfinder.app'
end
