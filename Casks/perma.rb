cask 'perma' do
  version '1.0.1'
  sha256 '224851f6e0a5b63f2357c93a175186e594cb50952841b2ad6bbf5db598b602cb'

  # perma-dl.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://perma-dl.s3.amazonaws.com/Perma-v#{version}.zip"
  name 'Perma'
  homepage 'https://per.ma/'

  app 'Perma.app'
end
