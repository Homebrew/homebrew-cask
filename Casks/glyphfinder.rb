cask 'glyphfinder' do
  version '1.2.0'
  sha256 '371374cbb85c72530d5953235ec32efc24457c181dcad7fc058121acaf014be2'

  # ueber.fra1.cdn.digitaloceanspaces.com/glyphfinder/ was verified as official when first introduced to the cask
  url "https://ueber.fra1.cdn.digitaloceanspaces.com/glyphfinder/mac/Glyphfinder-#{version}-mac.dmg"
  appcast 'https://www.glyphfinder.com/'
  name 'Glyphfinder'
  homepage 'https://www.glyphfinder.com/'

  app 'Glyphfinder.app'
end
