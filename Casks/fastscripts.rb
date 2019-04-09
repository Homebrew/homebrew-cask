cask 'fastscripts' do
  version '2.7.6'
  sha256 '0fd978bea618a160201c33ce31fbb87e765cd6f9ae94ae0c0f87c123632d3e39'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  depends_on macos: '>= :sierra'

  app 'FastScripts.app'
end
