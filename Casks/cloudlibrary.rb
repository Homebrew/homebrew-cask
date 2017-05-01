cask 'cloudlibrary' do
  if MacOS.version <= :lion
    version '1.50.735564'
    sha256 '569b78d4f78054518b7ea87678637949408ca7cd1fd90baf2221d92fff35cdfc'

    url "http://www.yourcloudlibrary.com/index.php/en-us/downloads/software/2-3mcloudlibrary-live-version-#{version.dots_to_hyphens}/file"

    app '3MCloudLibrary.app'
  else
    version '2.1.1701121409'
    sha256 'd16f2a0acda5f68937d0220992a94ec7b0e1b8c221f9cc653956a99d5aab31e0'

    url "http://download.yourcloudlibrary.com/apps/mac/cloudLibrary-#{version}.pkg"
    appcast 'http://www.yourcloudlibrary.com/index.php/en-us/downloads/software?format=rss',
            checkpoint: '0142ef1e6809410e6d8a2b944809407aab4fb085125c2dd2c34bd2075c564c8b'

    pkg "cloudLibrary-#{version}.pkg"

    uninstall pkgutil: 'com.yourcloudlibrary.mac'
  end

  name '3M Cloud Library'
  homepage 'http://www.yourcloudlibrary.com/index.php/en-us/get-the-app/mac'
end
