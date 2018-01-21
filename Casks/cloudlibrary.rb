cask 'cloudlibrary' do
  if MacOS.version <= :lion
    version '1.50.735564'
    sha256 '569b78d4f78054518b7ea87678637949408ca7cd1fd90baf2221d92fff35cdfc'

    url "http://www.yourcloudlibrary.com/index.php/en-us/downloads/software/2-3mcloudlibrary-live-version-#{version.dots_to_hyphens}/file"

    app '3MCloudLibrary.app'
  else
    version '2.3.1708230907'
    sha256 'f8424b1bcf209d01c80da1b1452dd140c8d7306572c76726fcc6c0244a5f5bc1'

    url "http://download.yourcloudlibrary.com/apps/mac/cloudLibrary-#{version}.pkg"
    appcast 'https://www.yourcloudlibrary.com/index.php/en-us/downloads/software?format=rss',
            checkpoint: '49cccbcaa582ec8b81f29869bcc0e4d4ab8147cd5e82c70dbd15f9a69ace2856'

    pkg "cloudLibrary-#{version}.pkg"

    uninstall pkgutil: 'com.yourcloudlibrary.mac'
  end

  name '3M Cloud Library'
  homepage 'https://www.yourcloudlibrary.com/mac/'
end
