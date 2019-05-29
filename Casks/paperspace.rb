cask 'paperspace' do
  version '6.5.0.4'
  sha256 '1ccec2ce4fafc11b1d95486934584d6974f6eaa212a502b197f79e28298f2e47'

  # s3-us-west-1.amazonaws.com/ps-receiver was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/ps-receiver/darwin/Paperspace-#{version}.dmg"
  name 'Paperspace'
  homepage 'https://www.paperspace.com/'

  app 'Paperspace.app'
end
