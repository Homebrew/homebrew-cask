cask '3mcloudlibrary' do
  version '1.50.735564'
  sha256 '569b78d4f78054518b7ea87678637949408ca7cd1fd90baf2221d92fff35cdfc'

  url "http://www.yourcloudlibrary.com/index.php/en-us/downloads/software/2-3mcloudlibrary-live-version-#{version.dots_to_hyphens}/file"
  appcast 'http://www.yourcloudlibrary.com/index.php/en-us/downloads/software?format=rss',
          checkpoint: '948716fbbe4a3af107c7e73424608615bf53623b0110dc24fa456a2ce06dad92'
  name '3M Cloud Library'
  name 'cloudLibrary'
  homepage 'http://www.yourcloudlibrary.com/index.php/en-us/get-the-app/mac'

  app '3MCloudLibrary.app'
end
