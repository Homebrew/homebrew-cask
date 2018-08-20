cask 'fastscripts' do
  version '2.7.1'
  sha256 'f23ccfdce983bd652cb23d3eebb40ac5d03a55de537bafb87427471409bf94ac'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  app 'FastScripts.app'
end
