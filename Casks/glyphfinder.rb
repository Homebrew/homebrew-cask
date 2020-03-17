cask 'glyphfinder' do
  version '1.0.0'
  sha256 'acd3bf6465629fe742af651e05ef79fc28720b4d6851ca66a52e5c3cb6a2e6db'

  # ueber.fra1.cdn.digitaloceanspaces.com/glyphfinder was verified as official when first introduced to the cask
  url "https://ueber.fra1.cdn.digitaloceanspaces.com/glyphfinder/mac/Glyphfinder-#{version}-mac.dmg"
  appcast 'https://www.glyphfinder.com/'
  name 'Glyphfinder'
  homepage 'https://www.glyphfinder.com/'

  app 'Glyphfinder.app'
end
