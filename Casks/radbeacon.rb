cask :v1 => 'radbeacon' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/downloads.radiusnetworks.com/cc3cef5f-fd6f-4789-8030-cf82d13bf487/RadBeacon.zip'
  homepage 'http://store.radiusnetworks.com/collections/all/products/radbeacon-config'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'RadBeacon.app'
end
