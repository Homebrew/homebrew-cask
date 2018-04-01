cask 'pingid' do
  version :latest
  sha256 :no_check

  # pingone-downloads.s3.amazonaws.com/pingid/mac-client was verified as official when first introduced to the cask
  url 'https://pingone-downloads.s3.amazonaws.com/pingid/mac-client/PingID.pkg'
  name 'PingID'
  homepage 'https://www.pingidentity.com/'

  pkg 'PingID.pkg', allow_untrusted: true

  uninstall pkgutil: 'com.pingidentity.pingid.pcclient'
end
