cask 'macaw' do
  version '1.6.1'
  sha256 '11aac6e57bbb71fb9ea5e3e3dfc5d991e36e266635df0c0c95e52efeb8a5e942'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml',
          checkpoint: '4aaf6bfb2da0a9570750514cbf4db9038d541891eb61f12d4f49f0cfc9e902ab'
  name 'Macaw'
  homepage 'http://macaw.co/'

  app 'Macaw.app'

  caveats do
    discontinued
  end
end
