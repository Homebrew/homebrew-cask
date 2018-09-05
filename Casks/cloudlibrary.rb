cask 'cloudlibrary' do
  version '2.3.1708230907'
  sha256 'f8424b1bcf209d01c80da1b1452dd140c8d7306572c76726fcc6c0244a5f5bc1'

  url "http://download.yourcloudlibrary.com/apps/mac/cloudLibrary-#{version}.pkg"
  name '3M Cloud Library'
  homepage 'https://www.yourcloudlibrary.com/mac/'

  pkg "cloudLibrary-#{version}.pkg"

  uninstall pkgutil: 'com.yourcloudlibrary.mac'
end
