cask 'ring' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/ring-mac-app-assets/RingMacLatest.zip'
  name 'Ring'
  homepage 'https://ring.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ring.app'
end
