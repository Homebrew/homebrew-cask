cask 'syrinscape' do
  version '1.3.3-20160816'
  sha256 'a4fbceeb78564e6648311cde5add027e26f814c7e2a5e36ebd3d8656781682c3'

  # syrinscape-us.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://syrinscape-us.s3.amazonaws.com/files/syrinscape-mac-#{version}.dmg"
  name 'Syrinscape Fantasy Player'
  homepage 'https://syrinscape.com/'

  app 'Syrinscape.app'
end
