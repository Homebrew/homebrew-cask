cask 'fastscripts' do
  version '2.8'
  sha256 'beae2a08a5657d31f5ef6f005c98b7f9fa0e2785253da3f9dffa73bb36052581'

  url "https://red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  depends_on macos: '>= :sierra'

  app 'FastScripts.app'
end
