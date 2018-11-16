cask 'fastscripts' do
  version '2.7.3'
  sha256 '86cd14d647586b09412ae191316ecb89833662a0822fd063010e19e7f6463d9e'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  depends_on macos: '>= :sierra'

  app 'FastScripts.app'
end
