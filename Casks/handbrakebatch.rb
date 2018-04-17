cask 'handbrakebatch' do
  version '2.25'
  sha256 'd5f57d1a7ef9a85b32c800aa8c94ea73420940b6a9e463561df343fe82c64c6c'

  url "https://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch_#{version}.zip"
  appcast 'https://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch.xml',
          checkpoint: 'd0130e8bccf68a690263dd558001c636fff191896500d9665245a920c107904f'
  name 'HandBrakeBatch'
  homepage 'https://www.osomac.com/apps/osx/handbrake-batch/'

  app 'HandBrakeBatch.app'

  caveats do
    discontinued
  end
end
