cask 'autodesk-fusion-360' do
  version :latest
  sha256 :no_check

  url 'https://dl.appstreaming.autodesk.com/production/installers/Fusion%20360%20Client%20Downloader.dmg'
  name 'Autodesk Fusion 360'
  homepage 'https://www.autodesk.com/products/fusion-360/overview'

  installer manual: 'Right-click > Open to Install.app'

  uninstall script: '~/Applications/Remove Autodesk Fusion 360.app/Contents/MacOS/Remove Autodesk Fusion 360',
            quit:   'com.autodesk.fusion360'

  zap delete: [
                '~/Library/Application Support/Autodesk',
                '~/Library/Caches/com.autodesk.senddmp',
              ]
end
