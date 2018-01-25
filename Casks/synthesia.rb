cask 'synthesia' do
  version '10.4'
  sha256 'a17b3a39c7351ad93cc3c099f7cc57520532a35a23fdd8fb73d1d7a86a8e6649'

  # synthesia.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://synthesia.s3.amazonaws.com/files/Synthesia-#{version}.dmg"
  name 'Synthesia'
  homepage 'https://www.synthesiagame.com/'

  app 'Synthesia.app'
end
