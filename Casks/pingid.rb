cask 'pingid' do
  version :latest
  sha256 :no_check

  # amazonaws.com/pingid was verified as official when first introduced to the cask
  url 'https://pingone-downloads.s3.amazonaws.com/pingid/mac-client/PingID.pkg'
  name 'PingID'
  homepage 'https://www.pingidentity.com/en.html'

  pkg 'PingID.pkg', allow_untrusted: true

  uninstall pkgutil: 'com.pingidentity.pingid.pcclient'
end
