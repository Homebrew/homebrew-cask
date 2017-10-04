cask 'remarkable' do
  version '1.0.0'
  sha256 '5135c6878ebc1d1816aac4bc822b7cd0da3bb05c14167c201aefe20def1e05cf'

  # storage.googleapis.com was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/remarkable-client-software-540221a9321a8a52ec61a06bfab53423/desktop/production/mac/remarkable-1.0.0.dmg'
  name 'reMarkable'
  homepage 'https://remarkable.com/'

  app 'reMarkable.app'
end
