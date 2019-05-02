cask 'noodl' do
  version '1.3.1'
  sha256 '3bada2b659b51937b0b8b1fcc3cc21544f0e27e2a96ad0df9cda4d35e93a133e'

  # s3.amazonaws.com/updates.noodlcloud.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/updates.noodlcloud.com/Noodl-#{version}.dmg"
  name 'Noodl'
  homepage 'https://www.getnoodl.com/'

  app 'Noodl.app'
end
