cask 'synthesia' do
  version '10.3'
  sha256 'd1152c5575969a81df535fa9b63824f63b2520865cbb4760dfc578cba5af9bd7'

  # synthesia.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://synthesia.s3.amazonaws.com/files/Synthesia-#{version}.dmg"
  name 'Synthesia'
  homepage 'https://www.synthesiagame.com/'

  app 'Synthesia.app'
end
