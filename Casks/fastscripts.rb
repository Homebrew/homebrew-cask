cask 'fastscripts' do
  version '2.8.1'
  sha256 '400b06282155a92e55b3cbe753e6b809bce4bd5f6e548776a2cbb3b617cb8d17'

  url "https://red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  depends_on macos: '>= :sierra'

  app 'FastScripts.app'
end
