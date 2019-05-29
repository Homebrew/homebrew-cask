cask 'fastscripts' do
  version '2.7.7'
  sha256 'f909d9ab3f55f77f98a2407008f707dd7c1ae10f3fbb366052318fe6d33603e4'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  depends_on macos: '>= :sierra'

  app 'FastScripts.app'
end
