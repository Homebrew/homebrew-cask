cask 'fastscripts' do
  version '2.7.8'
  sha256 'a0c0bc96f1f35cd569fdab04643a6c5aec6ecf85505440f0e3887f395ee288c3'

  url "https://red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  depends_on macos: '>= :sierra'

  app 'FastScripts.app'
end
