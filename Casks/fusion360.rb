cask :v1 => 'fusion360' do
  version :latest
  sha256 :no_check

  url 'https://dl.appstreaming.autodesk.com/production/installers/Fusion%20360%20Client%20Downloader.dmg'
  name 'Fusion 360'
  homepage 'http://www.autodesk.com/products/fusion-360/overview'
  license :closed

  app 'Double Click to Install.app', :target => 'Fusion360.app'
end
