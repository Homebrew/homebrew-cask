cask 'paperspace' do
  version '7.1.0.7'
  sha256 'bd1c1b7bb9f68b55bfe5ffce04e5c136be65dde231933dd2cd10e6a28fa0790b'

  # ps-receiver.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ps-receiver.s3.amazonaws.com/darwin/Paperspace-#{version}.dmg"
  name 'Paperspace'
  homepage 'https://www.paperspace.com/'

  app 'Paperspace.app'
end
