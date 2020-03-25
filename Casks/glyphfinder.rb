cask 'glyphfinder' do
  version '1.1.1'
  sha256 'c0344f61eca8d371817379a48e66ce7926c6c9c418716e3c311197ed846303b1'

  # ueber.fra1.cdn.digitaloceanspaces.com/glyphfinder was verified as official when first introduced to the cask
  url "https://ueber.fra1.cdn.digitaloceanspaces.com/glyphfinder/mac/Glyphfinder-#{version}-mac.dmg"
  appcast 'https://www.glyphfinder.com/'
  name 'Glyphfinder'
  homepage 'https://www.glyphfinder.com/'

  app 'Glyphfinder.app'
end
