cask 'cloudlibrary' do
  if MacOS.version <= :lion
    version '1.50.735564'
    sha256 '569b78d4f78054518b7ea87678637949408ca7cd1fd90baf2221d92fff35cdfc'

    url "http://www.yourcloudlibrary.com/index.php/en-us/downloads/software/2-3mcloudlibrary-live-version-#{version.dots_to_hyphens}/file"

    app '3MCloudLibrary.app'
  else
    version '2.0.1610051750'
    sha256 'f867a2858ca339555d655adec2e1e9f2e682381b8bb8745006f9d35cb87aa480'

    url "http://download.yourcloudlibrary.com/apps/mac/cloudLibrary-#{version}.pkg"
    appcast 'http://www.yourcloudlibrary.com/index.php/en-us/downloads/software?format=rss',
            checkpoint: '948716fbbe4a3af107c7e73424608615bf53623b0110dc24fa456a2ce06dad92'

    pkg "cloudLibrary-#{version}.pkg"

    uninstall pkgutil: 'com.yourcloudlibrary.mac'
  end

  name '3M Cloud Library'
  homepage 'http://www.yourcloudlibrary.com/index.php/en-us/get-the-app/mac'
end
