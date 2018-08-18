cask 'fastscripts' do
  version '2.7'
  sha256 '0ee5d9b986e6c6fb1b0234eedacb5bf3bcf3251c813664b86e72e05de2b55c57'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  app 'FastScripts.app'
end
