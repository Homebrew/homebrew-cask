cask 'ring' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/ring-mac-app-assets/RingMacLatest.zip'
  name 'Ring'
  homepage 'https://ring.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ring.app'
end
