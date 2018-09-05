cask 'macaw' do
  version '1.6.1'
  sha256 '11aac6e57bbb71fb9ea5e3e3dfc5d991e36e266635df0c0c95e52efeb8a5e942'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml'
  name 'Macaw'
  homepage 'http://macaw.co/'

  app 'Macaw.app'

  caveats do
    discontinued
  end
end
