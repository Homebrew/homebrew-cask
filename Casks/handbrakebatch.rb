cask 'handbrakebatch' do
  version '2.25'
  sha256 'd5f57d1a7ef9a85b32c800aa8c94ea73420940b6a9e463561df343fe82c64c6c'

  url "https://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch_#{version}.zip"
  appcast 'https://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch.xml',
          :sha256 => 'a72a554ccdc9a884a1c9ec082f0377277383836b1913164f5177ce1ed5032c7e'
  name 'HandBrakeBatch'
  homepage 'https://www.osomac.com/apps/osx/handbrake-batch/'
  license :gpl

  app 'HandBrakeBatch.app'

  caveats do
    discontinued
  end
end
