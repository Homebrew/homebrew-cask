cask 'macaw' do
  version '1.6.1'
  sha256 '11aac6e57bbb71fb9ea5e3e3dfc5d991e36e266635df0c0c95e52efeb8a5e942'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml',
          checkpoint: '965a05c732a828d55db7d563cb01d1f746c425e3c672233ba3f67ec998e7bf2e'
  name 'Macaw'
  homepage 'http://macaw.co/'

  app 'Macaw.app'

  caveats do
    discontinued
  end
end
