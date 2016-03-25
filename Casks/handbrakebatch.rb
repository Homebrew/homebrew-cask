cask 'handbrakebatch' do
  version '2.25'
  sha256 'd5f57d1a7ef9a85b32c800aa8c94ea73420940b6a9e463561df343fe82c64c6c'

  url "https://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch_#{version}.zip"
  appcast 'https://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch.xml',
          checkpoint: 'bf889f0a8523ddef97552e1e07fa75e6641aa1190383e065f89337fad1a3cc53'
  name 'HandBrakeBatch'
  homepage 'https://www.osomac.com/apps/osx/handbrake-batch/'
  license :gpl

  app 'HandBrakeBatch.app'

  caveats do
    discontinued
  end
end
