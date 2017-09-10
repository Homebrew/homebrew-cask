cask 'pablodraw' do
  version '3.2.1'
  sha256 '91a89ac33ba3e064a7a2b44d5c7c271cbd1303882874e7ce159b8fb058589301'

  url "http://download.picoe.ca/pablodraw/#{version.sub(%r{\.\d+$}, '')}/PabloDrawMac-#{version}.zip"
  name 'PabloDraw'
  homepage 'http://picoe.ca/products/pablodraw/'

  app 'PabloDraw.app'

  zap delete: '~/Library/Saved Application State/ca.picoe.pablodraw.savedState',
      trash:  [
                '~/Library/Application Support/ca.picoe.pablodraw',
                '~/Library/Preferences/ca.picoe.pablodraw.plist',
              ]
end
