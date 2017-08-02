cask 'cloudlibrary' do
  if MacOS.version <= :lion
    version '1.50.735564'
    sha256 '569b78d4f78054518b7ea87678637949408ca7cd1fd90baf2221d92fff35cdfc'

    url "http://www.yourcloudlibrary.com/index.php/en-us/downloads/software/2-3mcloudlibrary-live-version-#{version.dots_to_hyphens}/file"

    app '3MCloudLibrary.app'
  else
    version '2.2.1706151134'
    sha256 'd84ab4416933f33eb46617d11dde2a8efd0db04a0b0131d2e9cd677e00926bba'

    url "http://download.yourcloudlibrary.com/apps/mac/cloudLibrary-#{version}.pkg"
    appcast 'http://www.yourcloudlibrary.com/index.php/en-us/downloads/software?format=rss',
            checkpoint: '6b8ef699b4bfa6d53abd56031b04f09a121c547b6e892a7ac5cb18c98877792a'

    pkg "cloudLibrary-#{version}.pkg"

    uninstall pkgutil: 'com.yourcloudlibrary.mac'
  end

  name '3M Cloud Library'
  homepage 'http://www.yourcloudlibrary.com/index.php/en-us/get-the-app/mac'
end
