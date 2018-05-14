cask 'autodesk-fusion-360' do
  version ':latest'
  sha256 'e950e156917029783f33e64d587beee9243adf6e3e77e00615dc59c1fa837804'

  url 'https://dl.appstreaming.autodesk.com/production/installers/Fusion%20360%20Client%20Downloader.dmg'
  name 'Autodesk Fusion 360'
  homepage 'https://www.autodesk.com/products/fusion-360/overview'

  license :closed
  installer manual: 'Right-click > Open to Install.app'

  uninstall script: '~/Applications/Remove Autodesk Fusion 360.app/Contents/MacOS/Remove Autodesk Fusion 360',
            quit:   'com.autodesk.fusion360'

  zap delete: [
                '~/Library/Application Support/Autodesk',
                '~/Library/Caches/com.autodesk.senddmp',
              ]
end
